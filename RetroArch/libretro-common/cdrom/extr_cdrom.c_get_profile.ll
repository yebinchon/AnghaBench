; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_get_profile.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/cdrom/extr_cdrom.c_get_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"Removable disk\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"CD-ROM\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"CD-R\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"CD-RW\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"DVD-ROM\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"DVD-R Sequential Recording\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"DVD-RAM\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"DVD-RW Restricted Overwrite\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"DVD-RW Sequential recording\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"DVD-R Dual Layer Sequential Recording\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"DVD-R Dual Layer Jump Recording\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"DVD-RW Dual Layer\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"DVD+RW\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"DVD+R\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"DVD+RW Dual Layer\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"DVD+R Dual Layer\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"BD-ROM\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"BD-R SRM\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"BD-R RRM\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"BD-RE\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"HD DVD-ROM\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"HD DVD-R\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"HD DVD-RAM\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"HD DVD-RW\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"HD DVD-R Dual Layer\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"HD DVD-RW Dual Layer\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i16)* @get_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_profile(i16 zeroext %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  %4 = load i16, i16* %3, align 2
  %5 = zext i16 %4 to i32
  switch i32 %5, label %32 [
    i32 2, label %6
    i32 8, label %7
    i32 9, label %8
    i32 10, label %9
    i32 16, label %10
    i32 17, label %11
    i32 18, label %12
    i32 19, label %13
    i32 20, label %14
    i32 21, label %15
    i32 22, label %16
    i32 23, label %17
    i32 26, label %18
    i32 27, label %19
    i32 42, label %20
    i32 43, label %21
    i32 64, label %22
    i32 65, label %23
    i32 66, label %24
    i32 67, label %25
    i32 80, label %26
    i32 81, label %27
    i32 82, label %28
    i32 83, label %29
    i32 88, label %30
    i32 90, label %31
  ]

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %34

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %34

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %34

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %34

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %34

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %34

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %34

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %34

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %34

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %34

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %34

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %34

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %34

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %34

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %34

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %34

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %34

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %34

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %34

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %34

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %34

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %34

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %34

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %34

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %34

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %34

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %34

34:                                               ; preds = %33, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
