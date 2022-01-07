; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_is_bad_sysctl_name.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_is_bad_sysctl_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfstable = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"smbfs\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"afpfs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfstable*, i32)* @is_bad_sysctl_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_bad_sysctl_name(%struct.vfstable* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vfstable*, align 8
  %5 = alloca i32, align 4
  store %struct.vfstable* %0, %struct.vfstable** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %8 [
    i32 131, label %7
    i32 128, label %7
    i32 133, label %7
    i32 132, label %7
    i32 130, label %7
    i32 134, label %7
    i32 129, label %7
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2
  store i32 1, i32* %3, align 4
  br label %31

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %8
  %10 = load %struct.vfstable*, %struct.vfstable** %4, align 8
  %11 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @strcmp(i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %18 [
    i32 136, label %17
    i32 135, label %17
    i32 137, label %17
  ]

17:                                               ; preds = %15, %15, %15
  store i32 1, i32* %3, align 4
  br label %31

18:                                               ; preds = %15
  br label %30

19:                                               ; preds = %9
  %20 = load %struct.vfstable*, %struct.vfstable** %4, align 8
  %21 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strcmp(i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load i32, i32* %5, align 4
  switch i32 %26, label %28 [
    i32 140, label %27
    i32 139, label %27
    i32 138, label %27
  ]

27:                                               ; preds = %25, %25, %25
  store i32 1, i32* %3, align 4
  br label %31

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28, %19
  br label %30

30:                                               ; preds = %29, %18
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %27, %17, %7
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
