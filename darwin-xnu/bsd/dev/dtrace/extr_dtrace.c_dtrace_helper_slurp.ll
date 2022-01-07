; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_helper_slurp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_helper_slurp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_36__ = type { i64, i32, i64 }
%struct.TYPE_35__ = type { i64, i32 }
%struct.TYPE_32__ = type { i32, %struct.TYPE_33__** }
%struct.TYPE_33__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32, i32, i32 }
%struct.TYPE_34__ = type { i64 }

@dtrace_meta_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@DOF_SECT_PROVIDER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"dtrace\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"helper\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ustack\00", align 1
@DTRACE_HELPER_ACTION_USTACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"unmatched helpers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*, %struct.TYPE_36__*, %struct.TYPE_35__*)* @dtrace_helper_slurp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_helper_slurp(%struct.TYPE_29__* %0, %struct.TYPE_36__* %1, %struct.TYPE_35__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_34__*, align 8
  %19 = alloca %struct.TYPE_33__*, align 8
  %20 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store %struct.TYPE_36__* %1, %struct.TYPE_36__** %6, align 8
  store %struct.TYPE_35__* %2, %struct.TYPE_35__** %7, align 8
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %21 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %22 = ptrtoint %struct.TYPE_36__* %21 to i64
  store i64 %22, i64* %17, align 8
  %23 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %24 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_meta_lock, i32 %23)
  %25 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %26 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %25)
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %28, align 8
  store %struct.TYPE_31__* %29, %struct.TYPE_31__** %8, align 8
  %30 = icmp eq %struct.TYPE_31__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %33 = call %struct.TYPE_31__* @dtrace_helpers_create(%struct.TYPE_29__* %32)
  store %struct.TYPE_31__* %33, %struct.TYPE_31__** %8, align 8
  br label %34

34:                                               ; preds = %31, %3
  %35 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %35, i32 0, i32 1
  store i32* %36, i32** %9, align 8
  %37 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %40 = icmp ne %struct.TYPE_35__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  br label %46

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ %44, %41 ], [ 0, %45 ]
  %48 = load i32, i32* @B_FALSE, align 4
  %49 = call i32 @dtrace_dof_slurp(%struct.TYPE_36__* %37, i32* %38, i32* null, %struct.TYPE_32__** %10, i32 %47, i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %53 = call i32 @dtrace_dof_destroy(%struct.TYPE_36__* %52)
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %4, align 4
  br label %209

55:                                               ; preds = %46
  %56 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %57 = icmp ne %struct.TYPE_35__* %56, null
  br i1 %57, label %58, label %103

58:                                               ; preds = %55
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %99, %58
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %102

66:                                               ; preds = %59
  %67 = load i64, i64* %17, align 8
  %68 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %67, %70
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %72, %75
  %77 = sext i32 %76 to i64
  %78 = add i64 %71, %77
  %79 = inttoptr i64 %78 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %79, %struct.TYPE_34__** %18, align 8
  %80 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %81 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @DOF_SECT_PROVIDER, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %66
  br label %99

86:                                               ; preds = %66
  %87 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %88 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %89 = call i64 @dtrace_helper_provider_validate(%struct.TYPE_36__* %87, %struct.TYPE_34__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %93 = call i32 @dtrace_enabling_destroy(%struct.TYPE_32__* %92)
  %94 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %95 = call i32 @dtrace_dof_destroy(%struct.TYPE_36__* %94)
  store i32 -1, i32* %4, align 4
  br label %209

96:                                               ; preds = %86
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %96, %85
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %59

102:                                              ; preds = %59
  br label %103

103:                                              ; preds = %102, %55
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %159, %103
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %162

110:                                              ; preds = %104
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %113, i64 %115
  %117 = load %struct.TYPE_33__*, %struct.TYPE_33__** %116, align 8
  store %struct.TYPE_33__* %117, %struct.TYPE_33__** %19, align 8
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %119 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %118, i32 0, i32 0
  store %struct.TYPE_30__* %119, %struct.TYPE_30__** %20, align 8
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %121 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @LIT_STRNEQL(i32 %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %110
  br label %159

126:                                              ; preds = %110
  %127 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @LIT_STRNEQL(i32 %129, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %126
  br label %159

133:                                              ; preds = %126
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @LIT_STRNEQL(i32 %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %133
  br label %159

140:                                              ; preds = %133
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %142 = load i32, i32* @DTRACE_HELPER_ACTION_USTACK, align 4
  %143 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %144 = call i32 @dtrace_helper_action_add(%struct.TYPE_29__* %141, i32 %142, %struct.TYPE_33__* %143)
  store i32 %144, i32* %13, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %140
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @dtrace_helper_destroygen(%struct.TYPE_29__* %147, i32 %150)
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %153 = call i32 @dtrace_enabling_destroy(%struct.TYPE_32__* %152)
  %154 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %155 = call i32 @dtrace_dof_destroy(%struct.TYPE_36__* %154)
  store i32 -1, i32* %4, align 4
  br label %209

156:                                              ; preds = %140
  %157 = load i32, i32* %14, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %14, align 4
  br label %159

159:                                              ; preds = %156, %139, %132, %125
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %104

162:                                              ; preds = %104
  %163 = load i32, i32* %14, align 4
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  %169 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %170 = call i32 @dtrace_dof_error(%struct.TYPE_36__* %169, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %162
  %172 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  store i32 %174, i32* %12, align 4
  %176 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %177 = call i32 @dtrace_enabling_destroy(%struct.TYPE_32__* %176)
  %178 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %179 = icmp ne %struct.TYPE_35__* %178, null
  br i1 %179, label %180, label %201

180:                                              ; preds = %171
  %181 = load i32, i32* %15, align 4
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %201

183:                                              ; preds = %180
  %184 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %185 = ptrtoint %struct.TYPE_36__* %184 to i64
  %186 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %186, i32 0, i32 0
  store i64 %185, i64* %187, align 8
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %189 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %190 = load i32, i32* %12, align 4
  %191 = call i64 @dtrace_helper_provider_add(%struct.TYPE_29__* %188, %struct.TYPE_35__* %189, i32 %190)
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %183
  %194 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %196 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %197 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %198 = call i32 @dtrace_helper_provider_register(%struct.TYPE_29__* %195, %struct.TYPE_31__* %196, %struct.TYPE_35__* %197)
  %199 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  store i32 0, i32* %16, align 4
  br label %200

200:                                              ; preds = %193, %183
  br label %201

201:                                              ; preds = %200, %180, %171
  %202 = load i32, i32* %16, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %206 = call i32 @dtrace_dof_destroy(%struct.TYPE_36__* %205)
  br label %207

207:                                              ; preds = %204, %201
  %208 = load i32, i32* %12, align 4
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %207, %146, %91, %51
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local %struct.TYPE_31__* @dtrace_helpers_create(%struct.TYPE_29__*) #1

declare dso_local i32 @dtrace_dof_slurp(%struct.TYPE_36__*, i32*, i32*, %struct.TYPE_32__**, i32, i32) #1

declare dso_local i32 @dtrace_dof_destroy(%struct.TYPE_36__*) #1

declare dso_local i64 @dtrace_helper_provider_validate(%struct.TYPE_36__*, %struct.TYPE_34__*) #1

declare dso_local i32 @dtrace_enabling_destroy(%struct.TYPE_32__*) #1

declare dso_local i32 @LIT_STRNEQL(i32, i8*) #1

declare dso_local i32 @dtrace_helper_action_add(%struct.TYPE_29__*, i32, %struct.TYPE_33__*) #1

declare dso_local i32 @dtrace_helper_destroygen(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @dtrace_dof_error(%struct.TYPE_36__*, i8*) #1

declare dso_local i64 @dtrace_helper_provider_add(%struct.TYPE_29__*, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @dtrace_helper_provider_register(%struct.TYPE_29__*, %struct.TYPE_31__*, %struct.TYPE_35__*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
