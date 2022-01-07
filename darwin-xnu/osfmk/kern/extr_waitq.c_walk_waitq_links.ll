; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_walk_waitq_links.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_walk_waitq_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i64 }
%struct.waitq.0 = type opaque
%struct.waitq_link = type opaque
%struct.waitq_link.1 = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.waitq_set* }
%struct.waitq_set = type { i64, %struct.waitq }
%struct.TYPE_4__ = type { i64, i64 }

@WQ_ITERATE_CONTINUE = common dso_local global i32 0, align 4
@WQL_LINK = common dso_local global i32 0, align 4
@WQL_ALL = common dso_local global i32 0, align 4
@WQL_WQS = common dso_local global i32 0, align 4
@LINK_WALK_FULL_DAG = common dso_local global i32 0, align 4
@LINK_WALK_FULL_DAG_UNLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.waitq*, i64, i32, i8*, i32 (%struct.waitq.0*, i8*, %struct.waitq_link*)*)* @walk_waitq_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_waitq_links(i32 %0, %struct.waitq* %1, i64 %2, i32 %3, i8* %4, i32 (%struct.waitq.0*, i8*, %struct.waitq_link*)* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.waitq*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32 (%struct.waitq.0*, i8*, %struct.waitq_link*)*, align 8
  %14 = alloca %struct.waitq_link.1*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.waitq_set*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.waitq* %1, %struct.waitq** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 (%struct.waitq.0*, i8*, %struct.waitq_link*)* %5, i32 (%struct.waitq.0*, i8*, %struct.waitq_link*)** %13, align 8
  %23 = load i64, i64* %10, align 8
  %24 = call %struct.waitq_link.1* @wql_get_link(i64 %23)
  store %struct.waitq_link.1* %24, %struct.waitq_link.1** %14, align 8
  %25 = load %struct.waitq_link.1*, %struct.waitq_link.1** %14, align 8
  %26 = icmp ne %struct.waitq_link.1* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %6
  %28 = load i32, i32* @WQ_ITERATE_CONTINUE, align 4
  store i32 %28, i32* %7, align 4
  br label %185

29:                                               ; preds = %6
  store i64 0, i64* %15, align 8
  store i64 0, i64* %10, align 8
  %30 = load %struct.waitq_link.1*, %struct.waitq_link.1** %14, align 8
  %31 = call i32 @wql_type(%struct.waitq_link.1* %30)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* @WQL_LINK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.waitq_link.1*, %struct.waitq_link.1** %14, align 8
  %37 = getelementptr inbounds %struct.waitq_link.1, %struct.waitq_link.1* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  %40 = load %struct.waitq_link.1*, %struct.waitq_link.1** %14, align 8
  %41 = getelementptr inbounds %struct.waitq_link.1, %struct.waitq_link.1* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %15, align 8
  br label %44

44:                                               ; preds = %35, %29
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @WQL_ALL, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %48, %44
  %53 = load i32 (%struct.waitq.0*, i8*, %struct.waitq_link*)*, i32 (%struct.waitq.0*, i8*, %struct.waitq_link*)** %13, align 8
  %54 = load %struct.waitq*, %struct.waitq** %9, align 8
  %55 = bitcast %struct.waitq* %54 to %struct.waitq.0*
  %56 = load i8*, i8** %12, align 8
  %57 = load %struct.waitq_link.1*, %struct.waitq_link.1** %14, align 8
  %58 = bitcast %struct.waitq_link.1* %57 to %struct.waitq_link*
  %59 = call i32 %53(%struct.waitq.0* %55, i8* %56, %struct.waitq_link* %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* @WQ_ITERATE_CONTINUE, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %52
  %64 = load %struct.waitq_link.1*, %struct.waitq_link.1** %14, align 8
  %65 = call i32 @wql_put_link(%struct.waitq_link.1* %64)
  %66 = load i32, i32* %17, align 4
  store i32 %66, i32* %7, align 4
  br label %185

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67, %48
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* @WQL_WQS, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %153

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @LINK_WALK_FULL_DAG, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @LINK_WALK_FULL_DAG_UNLOCKED, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %153

80:                                               ; preds = %76, %72
  %81 = load %struct.waitq_link.1*, %struct.waitq_link.1** %14, align 8
  %82 = getelementptr inbounds %struct.waitq_link.1, %struct.waitq_link.1* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load %struct.waitq_set*, %struct.waitq_set** %83, align 8
  store %struct.waitq_set* %84, %struct.waitq_set** %18, align 8
  %85 = load i32, i32* @WQ_ITERATE_CONTINUE, align 4
  store i32 %85, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i64 0, i64* %21, align 8
  %86 = load %struct.waitq_set*, %struct.waitq_set** %18, align 8
  %87 = call i64 @waitq_set_is_valid(%struct.waitq_set* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %80
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @LINK_WALK_FULL_DAG, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %89
  %94 = load %struct.waitq_set*, %struct.waitq_set** %18, align 8
  %95 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %94, i32 0, i32 1
  %96 = call i32 @waitq_irq_safe(%struct.waitq* %95)
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 @assert(i32 %99)
  %101 = load %struct.waitq_set*, %struct.waitq_set** %18, align 8
  %102 = call i32 @waitq_set_lock(%struct.waitq_set* %101)
  store i32 1, i32* %20, align 4
  br label %103

103:                                              ; preds = %93, %89, %80
  %104 = load %struct.waitq_set*, %struct.waitq_set** %18, align 8
  %105 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.waitq_link.1*, %struct.waitq_link.1** %14, align 8
  %108 = getelementptr inbounds %struct.waitq_link.1, %struct.waitq_link.1* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %106, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %103
  %113 = load i32, i32* %20, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load %struct.waitq_set*, %struct.waitq_set** %18, align 8
  %117 = call i32 @waitq_set_unlock(%struct.waitq_set* %116)
  br label %118

118:                                              ; preds = %115, %112
  %119 = load %struct.waitq_link.1*, %struct.waitq_link.1** %14, align 8
  %120 = call i32 @wql_put_link(%struct.waitq_link.1* %119)
  %121 = load i32, i32* @WQ_ITERATE_CONTINUE, align 4
  store i32 %121, i32* %7, align 4
  br label %185

122:                                              ; preds = %103
  %123 = load %struct.waitq_set*, %struct.waitq_set** %18, align 8
  %124 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.waitq, %struct.waitq* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %21, align 8
  %127 = load i64, i64* %21, align 8
  %128 = icmp sgt i64 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %122
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.waitq_set*, %struct.waitq_set** %18, align 8
  %132 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %131, i32 0, i32 1
  %133 = load i64, i64* %21, align 8
  %134 = load i32, i32* %11, align 4
  %135 = load i8*, i8** %12, align 8
  %136 = load i32 (%struct.waitq.0*, i8*, %struct.waitq_link*)*, i32 (%struct.waitq.0*, i8*, %struct.waitq_link*)** %13, align 8
  %137 = call i32 @walk_waitq_links(i32 %130, %struct.waitq* %132, i64 %133, i32 %134, i8* %135, i32 (%struct.waitq.0*, i8*, %struct.waitq_link*)* %136)
  store i32 %137, i32* %19, align 4
  br label %138

138:                                              ; preds = %129, %122
  %139 = load i32, i32* %20, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load %struct.waitq_set*, %struct.waitq_set** %18, align 8
  %143 = call i32 @waitq_set_unlock(%struct.waitq_set* %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* @WQ_ITERATE_CONTINUE, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = load %struct.waitq_link.1*, %struct.waitq_link.1** %14, align 8
  %150 = call i32 @wql_put_link(%struct.waitq_link.1* %149)
  %151 = load i32, i32* %19, align 4
  store i32 %151, i32* %7, align 4
  br label %185

152:                                              ; preds = %144
  br label %153

153:                                              ; preds = %152, %76, %68
  %154 = load %struct.waitq_link.1*, %struct.waitq_link.1** %14, align 8
  %155 = call i32 @wql_put_link(%struct.waitq_link.1* %154)
  %156 = load i64, i64* %10, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %153
  %159 = load i32, i32* %8, align 4
  %160 = load %struct.waitq*, %struct.waitq** %9, align 8
  %161 = load i64, i64* %10, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load i8*, i8** %12, align 8
  %164 = load i32 (%struct.waitq.0*, i8*, %struct.waitq_link*)*, i32 (%struct.waitq.0*, i8*, %struct.waitq_link*)** %13, align 8
  %165 = call i32 @walk_waitq_links(i32 %159, %struct.waitq* %160, i64 %161, i32 %162, i8* %163, i32 (%struct.waitq.0*, i8*, %struct.waitq_link*)* %164)
  store i32 %165, i32* %22, align 4
  %166 = load i32, i32* %22, align 4
  %167 = load i32, i32* @WQ_ITERATE_CONTINUE, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %158
  %170 = load i32, i32* %22, align 4
  store i32 %170, i32* %7, align 4
  br label %185

171:                                              ; preds = %158
  br label %172

172:                                              ; preds = %171, %153
  %173 = load i64, i64* %15, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %172
  %176 = load i32, i32* %8, align 4
  %177 = load %struct.waitq*, %struct.waitq** %9, align 8
  %178 = load i64, i64* %15, align 8
  %179 = load i32, i32* %11, align 4
  %180 = load i8*, i8** %12, align 8
  %181 = load i32 (%struct.waitq.0*, i8*, %struct.waitq_link*)*, i32 (%struct.waitq.0*, i8*, %struct.waitq_link*)** %13, align 8
  %182 = call i32 @walk_waitq_links(i32 %176, %struct.waitq* %177, i64 %178, i32 %179, i8* %180, i32 (%struct.waitq.0*, i8*, %struct.waitq_link*)* %181)
  store i32 %182, i32* %7, align 4
  br label %185

183:                                              ; preds = %172
  %184 = load i32, i32* @WQ_ITERATE_CONTINUE, align 4
  store i32 %184, i32* %7, align 4
  br label %185

185:                                              ; preds = %183, %175, %169, %148, %118, %63, %27
  %186 = load i32, i32* %7, align 4
  ret i32 %186
}

declare dso_local %struct.waitq_link.1* @wql_get_link(i64) #1

declare dso_local i32 @wql_type(%struct.waitq_link.1*) #1

declare dso_local i32 @wql_put_link(%struct.waitq_link.1*) #1

declare dso_local i64 @waitq_set_is_valid(%struct.waitq_set*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local i32 @waitq_set_lock(%struct.waitq_set*) #1

declare dso_local i32 @waitq_set_unlock(%struct.waitq_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
