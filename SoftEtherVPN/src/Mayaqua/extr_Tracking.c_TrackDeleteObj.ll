; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tracking.c_TrackDeleteObj.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Tracking.c_TrackDeleteObj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [52 x i8] c"TrackDeleteObj(): 0x%x not found in tracking list!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TrackDeleteObj(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %32

7:                                                ; preds = %1
  %8 = call i64 (...) @IsTrackingEnabled()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = call i64 (...) @IsMemCheck()
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i1 [ false, %7 ], [ %12, %10 ]
  %15 = zext i1 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %32

18:                                               ; preds = %13
  %19 = call i32 (...) @LockTrackingList()
  %20 = load i64, i64* %2, align 8
  %21 = call i32* @SearchTrackingList(i64 %20)
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = call i32 (...) @UnlockTrackingList()
  %26 = load i64, i64* %2, align 8
  %27 = call i32 @Debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %26)
  br label %32

28:                                               ; preds = %18
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @DeleteTrackingList(i32* %29, i32 1)
  %31 = call i32 (...) @UnlockTrackingList()
  br label %32

32:                                               ; preds = %28, %24, %17, %6
  ret void
}

declare dso_local i64 @IsTrackingEnabled(...) #1

declare dso_local i64 @IsMemCheck(...) #1

declare dso_local i32 @LockTrackingList(...) #1

declare dso_local i32* @SearchTrackingList(i64) #1

declare dso_local i32 @UnlockTrackingList(...) #1

declare dso_local i32 @Debug(i8*, i64) #1

declare dso_local i32 @DeleteTrackingList(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
