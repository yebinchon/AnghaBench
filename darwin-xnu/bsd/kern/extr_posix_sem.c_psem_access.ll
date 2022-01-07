; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_posix_sem.c_psem_access.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_posix_sem.c_psem_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pseminfo = type { i32, i32, i32 }

@FREAD = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pseminfo*, i32, i32)* @psem_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psem_access(%struct.pseminfo* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pseminfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pseminfo* %0, %struct.pseminfo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @FREAD, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @S_IRUSR, align 4
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 0, %15 ]
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @FWRITE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @S_IWUSR, align 4
  br label %25

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = or i32 %17, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @suser(i32 %28, i32* null)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %45

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.pseminfo*, %struct.pseminfo** %5, align 8
  %35 = getelementptr inbounds %struct.pseminfo, %struct.pseminfo* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pseminfo*, %struct.pseminfo** %5, align 8
  %38 = getelementptr inbounds %struct.pseminfo, %struct.pseminfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pseminfo*, %struct.pseminfo** %5, align 8
  %41 = getelementptr inbounds %struct.pseminfo, %struct.pseminfo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @posix_cred_access(i32 %33, i32 %36, i32 %39, i32 %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %32, %31
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @suser(i32, i32*) #1

declare dso_local i32 @posix_cred_access(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
