; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/taosdump/extr_taosdump.c_taosFreeDbInfos.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/taosdump/extr_taosdump.c_taosFreeDbInfos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dbInfos = common dso_local global i32***** null, align 8
@tsMaxDbs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @taosFreeDbInfos() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*****, i32****** @dbInfos, align 8
  %3 = icmp eq i32***** %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %24

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %18, %5
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @tsMaxDbs, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %6
  %11 = load i32*****, i32****** @dbInfos, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32****, i32***** %11, i64 %13
  %15 = load i32****, i32***** %14, align 8
  %16 = bitcast i32**** %15 to i32*****
  %17 = call i32 @tfree(i32***** %16)
  br label %18

18:                                               ; preds = %10
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %1, align 4
  br label %6

21:                                               ; preds = %6
  %22 = load i32*****, i32****** @dbInfos, align 8
  %23 = call i32 @tfree(i32***** %22)
  br label %24

24:                                               ; preds = %21, %4
  ret void
}

declare dso_local i32 @tfree(i32*****) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
