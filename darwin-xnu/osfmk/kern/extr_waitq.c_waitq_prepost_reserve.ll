; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_prepost_reserve.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_prepost_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i64, i64 }
%struct.wq_prepost = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@WAITQ_KEEP_LOCKED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"Attempting to reserve prepost linkages for waitq %p (extra:%d)\00", align 1
@WAITQ_UNLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @waitq_prepost_reserve(%struct.waitq* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.waitq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wq_prepost*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.waitq* %0, %struct.waitq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store %struct.wq_prepost* null, %struct.wq_prepost** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @WAITQ_KEEP_LOCKED, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load %struct.waitq*, %struct.waitq** %5, align 8
  %21 = call i64 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.waitq* %20)
  %22 = inttoptr i64 %21 to i8*
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @wqdbg_v(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %23)
  %25 = load %struct.waitq*, %struct.waitq** %5, align 8
  %26 = icmp eq %struct.waitq* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 2
  %33 = call i32 @waitq_alloc_prepost_reservation(i32 %32, %struct.waitq* null, i32* %15, %struct.wq_prepost** %11)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 2
  %37 = icmp eq i32 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.wq_prepost*, %struct.wq_prepost** %11, align 8
  %41 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %4, align 8
  br label %158

44:                                               ; preds = %27, %3
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @WAITQ_KEEP_LOCKED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* @WAITQ_UNLOCK, align 8
  %51 = icmp eq i64 %49, %50
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i1 [ true, %44 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.waitq*, %struct.waitq** %5, align 8
  %57 = call i32 @waitq_irq_safe(%struct.waitq* %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.waitq*, %struct.waitq** %5, align 8
  %63 = call i32 @waitq_lock(%struct.waitq* %62)
  %64 = load %struct.waitq*, %struct.waitq** %5, align 8
  %65 = getelementptr inbounds %struct.waitq, %struct.waitq* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %9, align 8
  %67 = load %struct.waitq*, %struct.waitq** %5, align 8
  %68 = getelementptr inbounds %struct.waitq, %struct.waitq* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %52
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %148

76:                                               ; preds = %72, %52
  %77 = load %struct.waitq*, %struct.waitq** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call i32 @waitq_count_prepost_reservation(%struct.waitq* %77, i32 %78, i32 %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %148

87:                                               ; preds = %83
  br label %145

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %130, %88
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.waitq*, %struct.waitq** %5, align 8
  %92 = call i32 @waitq_alloc_prepost_reservation(i32 %90, %struct.waitq* %91, i32* %15, %struct.wq_prepost** %11)
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %148

99:                                               ; preds = %95
  br label %145

100:                                              ; preds = %89
  %101 = load %struct.waitq*, %struct.waitq** %5, align 8
  %102 = getelementptr inbounds %struct.waitq, %struct.waitq* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %117, label %105

105:                                              ; preds = %100
  %106 = load %struct.waitq*, %struct.waitq** %5, align 8
  %107 = getelementptr inbounds %struct.waitq, %struct.waitq* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load %struct.waitq*, %struct.waitq** %5, align 8
  %113 = getelementptr inbounds %struct.waitq, %struct.waitq* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %10, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %111, %100
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %148

121:                                              ; preds = %117
  br label %145

122:                                              ; preds = %111, %105
  %123 = load %struct.waitq*, %struct.waitq** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @waitq_count_prepost_reservation(%struct.waitq* %123, i32 %124, i32 %125)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %122
  %131 = load %struct.waitq*, %struct.waitq** %5, align 8
  %132 = getelementptr inbounds %struct.waitq, %struct.waitq* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %9, align 8
  %134 = load %struct.waitq*, %struct.waitq** %5, align 8
  %135 = getelementptr inbounds %struct.waitq, %struct.waitq* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %10, align 8
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %12, align 4
  %139 = sub nsw i32 %137, %138
  store i32 %139, i32* %13, align 4
  br label %89

140:                                              ; preds = %122
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  br label %148

144:                                              ; preds = %140
  br label %145

145:                                              ; preds = %144, %121, %99, %87
  %146 = load %struct.waitq*, %struct.waitq** %5, align 8
  %147 = call i32 @waitq_unlock(%struct.waitq* %146)
  br label %148

148:                                              ; preds = %145, %143, %120, %98, %86, %75
  %149 = load %struct.wq_prepost*, %struct.wq_prepost** %11, align 8
  %150 = icmp ne %struct.wq_prepost* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load %struct.wq_prepost*, %struct.wq_prepost** %11, align 8
  %153 = getelementptr inbounds %struct.wq_prepost, %struct.wq_prepost* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %8, align 8
  br label %156

156:                                              ; preds = %151, %148
  %157 = load i64, i64* %8, align 8
  store i64 %157, i64* %4, align 8
  br label %158

158:                                              ; preds = %156, %30
  %159 = load i64, i64* %4, align 8
  ret i64 %159
}

declare dso_local i32 @wqdbg_v(i8*, i8*, i32) #1

declare dso_local i64 @VM_KERNEL_UNSLIDE_OR_PERM(%struct.waitq*) #1

declare dso_local i32 @waitq_alloc_prepost_reservation(i32, %struct.waitq*, i32*, %struct.wq_prepost**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local i32 @waitq_lock(%struct.waitq*) #1

declare dso_local i32 @waitq_count_prepost_reservation(%struct.waitq*, i32, i32) #1

declare dso_local i32 @waitq_unlock(%struct.waitq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
