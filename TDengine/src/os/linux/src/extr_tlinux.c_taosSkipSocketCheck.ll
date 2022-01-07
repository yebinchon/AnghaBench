; ModuleID = '/home/carl/AnghaBench/TDengine/src/os/linux/src/extr_tlinux.c_taosSkipSocketCheck.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/os/linux/src/extr_tlinux.c_taosSkipSocketCheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"can't fetch os info\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Microsoft\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"using WSLv1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosSkipSocketCheck() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.utsname, align 4
  %3 = call i64 @uname(%struct.utsname* %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @pPrint(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %15

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @strstr(i32 %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = call i32 @pPrint(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %15

14:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %15

15:                                               ; preds = %14, %12, %5
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i64 @uname(%struct.utsname*) #1

declare dso_local i32 @pPrint(i8*) #1

declare dso_local i64 @strstr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
