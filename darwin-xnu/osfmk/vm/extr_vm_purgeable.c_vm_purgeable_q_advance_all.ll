; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_purgeable.c_vm_purgeable_q_advance_all.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_purgeable.c_vm_purgeable_q_advance_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64, i32 }
%struct.TYPE_6__ = type { i64, i64 }

@vm_page_queue_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@token_new_pagecount = common dso_local global i32 0, align 4
@TOKEN_NEW_PAGECOUNT_MAX = common dso_local global i32 0, align 4
@PURGEABLE_Q_TYPE_FIFO = common dso_local global i32 0, align 4
@PURGEABLE_Q_TYPE_MAX = common dso_local global i32 0, align 4
@purgeable_queues = common dso_local global %struct.TYPE_5__* null, align 8
@TOKEN_COUNT_MAX = common dso_local global i64 0, align 8
@tokens = common dso_local global %struct.TYPE_6__* null, align 8
@available_for_purge = common dso_local global i32 0, align 4
@DBG_MACH_VM = common dso_local global i32 0, align 4
@TOKEN_RIPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_purgeable_q_advance_all() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %6 = call i32 @LCK_MTX_ASSERT(i32* @vm_page_queue_lock, i32 %5)
  %7 = load i32, i32* @token_new_pagecount, align 4
  %8 = load i32, i32* @TOKEN_NEW_PAGECOUNT_MAX, align 4
  %9 = ashr i32 %8, 1
  %10 = icmp sgt i32 %7, %9
  br i1 %10, label %11, label %56

11:                                               ; preds = %0
  %12 = load i32, i32* @PURGEABLE_Q_TYPE_FIFO, align 4
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %52, %11
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @PURGEABLE_Q_TYPE_MAX, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %13
  %18 = load i32, i32* @token_new_pagecount, align 4
  %19 = sext i32 %18 to i64
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @purgeable_queues, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, %19
  store i64 %26, i64* %24, align 8
  store i64 %26, i64* %2, align 8
  %27 = load i64, i64* %2, align 8
  %28 = icmp sge i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i64, i64* %2, align 8
  %32 = load i64, i64* @TOKEN_COUNT_MAX, align 8
  %33 = icmp sle i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i64, i64* %2, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @purgeable_queues, align 8
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i64 %36, i64* %41, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @purgeable_queues, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %2, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  br label %52

52:                                               ; preds = %17
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %13

55:                                               ; preds = %13
  store i32 0, i32* @token_new_pagecount, align 4
  br label %56

56:                                               ; preds = %55, %0
  %57 = load i32, i32* @PURGEABLE_Q_TYPE_FIFO, align 4
  store i32 %57, i32* %1, align 4
  br label %58

58:                                               ; preds = %162, %56
  %59 = load i32, i32* %1, align 4
  %60 = load i32, i32* @PURGEABLE_Q_TYPE_MAX, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %165

62:                                               ; preds = %58
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @purgeable_queues, align 8
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %3, align 8
  store i64 1, i64* %4, align 8
  br label %67

67:                                               ; preds = %140, %107, %62
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %141

72:                                               ; preds = %67
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tokens, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %72
  %83 = load i64, i64* %4, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tokens, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %93, 1
  store i64 %94, i64* %92, align 8
  %95 = load i64, i64* %4, align 8
  %96 = sub nsw i64 %95, 1
  store i64 %96, i64* %4, align 8
  br label %97

97:                                               ; preds = %85, %82, %72
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tokens, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %136

107:                                              ; preds = %97
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tokens, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @available_for_purge, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* @available_for_purge, align 4
  %121 = load i32, i32* @DBG_MACH_VM, align 4
  %122 = load i32, i32* @TOKEN_RIPEN, align 4
  %123 = call i32 @MACHDBG_CODE(i32 %121, i32 %122)
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tokens, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* @available_for_purge, align 4
  %135 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %123, i32 %126, i64 %133, i32 0, i32 %134, i32 0)
  br label %67

136:                                              ; preds = %97
  %137 = load i64, i64* %4, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %141

140:                                              ; preds = %136
  br label %67

141:                                              ; preds = %139, %67
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %161, label %146

146:                                              ; preds = %141
  %147 = load i64, i64* %4, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = sub nsw i64 %150, %147
  store i64 %151, i64* %149, align 8
  %152 = load i32, i32* @token_new_pagecount, align 4
  %153 = sext i32 %152 to i64
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %153, %156
  %158 = icmp sge i64 %157, 0
  %159 = zext i1 %158 to i32
  %160 = call i32 @assert(i32 %159)
  br label %161

161:                                              ; preds = %146, %141
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %1, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %1, align 4
  br label %58

165:                                              ; preds = %58
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
