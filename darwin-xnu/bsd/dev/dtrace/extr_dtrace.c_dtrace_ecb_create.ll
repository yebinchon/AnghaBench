; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_ecb_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_ecb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32, i32, i32, i32, %struct.TYPE_24__*, i32, i32*, i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_29__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { %struct.TYPE_25__*, %struct.TYPE_26__, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_25__* }
%struct.TYPE_26__ = type { i32* }

@dtrace_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@DTRACE_CRV_ALLPROC = common dso_local global i32 0, align 4
@DTRACE_PRIV_USER = common dso_local global i32 0, align 4
@DTRACE_COND_OWNER = common dso_local global i32 0, align 4
@DTRACE_CRV_ALLZONE = common dso_local global i32 0, align 4
@DTRACE_COND_ZONEOWNER = common dso_local global i32 0, align 4
@DTRACE_CRV_KERNEL = common dso_local global i32 0, align 4
@DTRACE_PRIV_KERNEL = common dso_local global i32 0, align 4
@DTRACE_COND_USERMODE = common dso_local global i32 0, align 4
@dtrace_ecb_create_cache = common dso_local global %struct.TYPE_34__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_34__* (%struct.TYPE_29__*, %struct.TYPE_31__*, %struct.TYPE_32__*)* @dtrace_ecb_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_34__* @dtrace_ecb_create(%struct.TYPE_29__* %0, %struct.TYPE_31__* %1, %struct.TYPE_32__* %2) #0 {
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca %struct.TYPE_34__*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %6, align 8
  store %struct.TYPE_32__* %2, %struct.TYPE_32__** %7, align 8
  %15 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_33__*, %struct.TYPE_33__** %16, align 8
  store %struct.TYPE_33__* %17, %struct.TYPE_33__** %12, align 8
  %18 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %19 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %18)
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %21 = icmp ne %struct.TYPE_29__* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %26 = call %struct.TYPE_34__* @dtrace_ecb_add(%struct.TYPE_29__* %24, %struct.TYPE_31__* %25)
  store %struct.TYPE_34__* %26, %struct.TYPE_34__** %8, align 8
  %27 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %3
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @dtrace_predicate_hold(i32* %38)
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %41, i32 0, i32 6
  store i32* %40, i32** %42, align 8
  br label %43

43:                                               ; preds = %37, %3
  %44 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %45 = icmp ne %struct.TYPE_31__* %44, null
  br i1 %45, label %46, label %116

46:                                               ; preds = %43
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_30__*, %struct.TYPE_30__** %48, align 8
  store %struct.TYPE_30__* %49, %struct.TYPE_30__** %11, align 8
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @DTRACE_CRV_ALLPROC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %46
  %58 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DTRACE_PRIV_USER, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %57
  %66 = load i32, i32* @DTRACE_COND_OWNER, align 4
  %67 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %57, %46
  %72 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @DTRACE_CRV_ALLZONE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %71
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @DTRACE_PRIV_USER, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load i32, i32* @DTRACE_COND_ZONEOWNER, align 4
  %89 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %87, %79, %71
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @DTRACE_CRV_KERNEL, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %115, label %101

101:                                              ; preds = %93
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @DTRACE_PRIV_KERNEL, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load i32, i32* @DTRACE_COND_USERMODE, align 4
  %111 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %109, %101, %93
  br label %116

116:                                              ; preds = %115, %43
  %117 = load %struct.TYPE_34__*, %struct.TYPE_34__** @dtrace_ecb_create_cache, align 8
  %118 = icmp ne %struct.TYPE_34__* %117, null
  br i1 %118, label %119, label %162

119:                                              ; preds = %116
  %120 = load %struct.TYPE_34__*, %struct.TYPE_34__** @dtrace_ecb_create_cache, align 8
  store %struct.TYPE_34__* %120, %struct.TYPE_34__** %13, align 8
  %121 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %122, align 8
  store %struct.TYPE_24__* %123, %struct.TYPE_24__** %14, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %125 = icmp ne %struct.TYPE_24__* %124, null
  br i1 %125, label %126, label %160

126:                                              ; preds = %119
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i32 @ASSERT(i32 %131)
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %134, align 8
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %138 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %138, i32 0, i32 4
  store %struct.TYPE_24__* %137, %struct.TYPE_24__** %139, align 8
  %140 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %126, %119
  %161 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  store %struct.TYPE_34__* %161, %struct.TYPE_34__** %4, align 8
  br label %195

162:                                              ; preds = %116
  %163 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %164, align 8
  store %struct.TYPE_25__* %165, %struct.TYPE_25__** %10, align 8
  br label %166

166:                                              ; preds = %180, %162
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %168 = icmp ne %struct.TYPE_25__* %167, null
  br i1 %168, label %169, label %184

169:                                              ; preds = %166
  %170 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %172 = call i32 @dtrace_ecb_action_add(%struct.TYPE_34__* %170, %struct.TYPE_25__* %171)
  %173 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = icmp ne i32 %172, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %169
  %177 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %178 = call i32 @dtrace_ecb_destroy(%struct.TYPE_34__* %177)
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %4, align 8
  br label %195

179:                                              ; preds = %169
  br label %180

180:                                              ; preds = %179
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %182, align 8
  store %struct.TYPE_25__* %183, %struct.TYPE_25__** %10, align 8
  br label %166

184:                                              ; preds = %166
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %186 = call i32 @dtrace_ecb_resize(%struct.TYPE_34__* %185)
  %187 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  %189 = icmp ne i32 %186, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %184
  %191 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %192 = call i32 @dtrace_ecb_destroy(%struct.TYPE_34__* %191)
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %4, align 8
  br label %195

193:                                              ; preds = %184
  %194 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  store %struct.TYPE_34__* %194, %struct.TYPE_34__** @dtrace_ecb_create_cache, align 8
  store %struct.TYPE_34__* %194, %struct.TYPE_34__** %4, align 8
  br label %195

195:                                              ; preds = %193, %190, %176, %160
  %196 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  ret %struct.TYPE_34__* %196
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_34__* @dtrace_ecb_add(%struct.TYPE_29__*, %struct.TYPE_31__*) #1

declare dso_local i32 @dtrace_predicate_hold(i32*) #1

declare dso_local i32 @dtrace_ecb_action_add(%struct.TYPE_34__*, %struct.TYPE_25__*) #1

declare dso_local i32 @dtrace_ecb_destroy(%struct.TYPE_34__*) #1

declare dso_local i32 @dtrace_ecb_resize(%struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
