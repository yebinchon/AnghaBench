; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c___probebarnacle.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c___probebarnacle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@EXI_DEVICE_0 = common dso_local global i64 0, align 8
@EXI_SPEED1MHZ = common dso_local global i32 0, align 4
@EXI_WRITE = common dso_local global i32 0, align 4
@EXI_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64*)* @__probebarnacle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__probebarnacle(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @EXI_CHANNEL_2, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @EXI_DEVICE_0, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @EXI_Attach(i64 %18, i32* null)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i64 0, i64* %4, align 8
  br label %98

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %13, %3
  store i64 0, i64* %8, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @EXI_Lock(i64 %24, i64 %25, i32* null)
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %76

28:                                               ; preds = %23
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i32, i32* @EXI_SPEED1MHZ, align 4
  %32 = call i32 @EXI_Select(i64 %29, i64 %30, i32 %31)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %73

34:                                               ; preds = %28
  store i64 536941312, i64* %9, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i32, i32* @EXI_WRITE, align 4
  %37 = call i64 @EXI_Imm(i64 %35, i64* %9, i32 8, i32 %36, i32* null)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i64, i64* %8, align 8
  %41 = or i64 %40, 1
  store i64 %41, i64* %8, align 8
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @EXI_Sync(i64 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i64, i64* %8, align 8
  %48 = or i64 %47, 2
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i64, i64* %5, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = load i32, i32* @EXI_READ, align 4
  %53 = call i64 @EXI_Imm(i64 %50, i64* %51, i32 8, i32 %52, i32* null)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i64, i64* %8, align 8
  %57 = or i64 %56, 4
  store i64 %57, i64* %8, align 8
  br label %58

58:                                               ; preds = %55, %49
  %59 = load i64, i64* %5, align 8
  %60 = call i64 @EXI_Sync(i64 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i64, i64* %8, align 8
  %64 = or i64 %63, 8
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %62, %58
  %66 = load i64, i64* %5, align 8
  %67 = call i64 @EXI_Deselect(i64 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i64, i64* %8, align 8
  %71 = or i64 %70, 16
  store i64 %71, i64* %8, align 8
  br label %72

72:                                               ; preds = %69, %65
  br label %73

73:                                               ; preds = %72, %28
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @EXI_Unlock(i64 %74)
  br label %76

76:                                               ; preds = %73, %23
  %77 = load i64, i64* %5, align 8
  %78 = load i64, i64* @EXI_CHANNEL_2, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* @EXI_DEVICE_0, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @EXI_Detach(i64 %85)
  br label %87

87:                                               ; preds = %84, %80, %76
  %88 = load i64, i64* %8, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i64 0, i64* %4, align 8
  br label %98

91:                                               ; preds = %87
  %92 = load i64*, i64** %7, align 8
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, 65536
  %95 = icmp eq i64 %94, 65535
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i64 0, i64* %4, align 8
  br label %98

97:                                               ; preds = %91
  store i64 1, i64* %4, align 8
  br label %98

98:                                               ; preds = %97, %96, %90, %21
  %99 = load i64, i64* %4, align 8
  ret i64 %99
}

declare dso_local i64 @EXI_Attach(i64, i32*) #1

declare dso_local i32 @EXI_Lock(i64, i64, i32*) #1

declare dso_local i32 @EXI_Select(i64, i64, i32) #1

declare dso_local i64 @EXI_Imm(i64, i64*, i32, i32, i32*) #1

declare dso_local i64 @EXI_Sync(i64) #1

declare dso_local i64 @EXI_Deselect(i64) #1

declare dso_local i32 @EXI_Unlock(i64) #1

declare dso_local i32 @EXI_Detach(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
