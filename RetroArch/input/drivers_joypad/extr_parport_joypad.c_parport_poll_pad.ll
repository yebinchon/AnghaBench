; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_parport_joypad.c_parport_poll_pad.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_parport_joypad.c_parport_poll_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport_joypad = type { i32, i64*, i32 }

@PPRDATA = common dso_local global i32 0, align 4
@PPRSTATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parport_joypad*)* @parport_poll_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parport_poll_pad(%struct.parport_joypad* %0) #0 {
  %2 = alloca %struct.parport_joypad*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.parport_joypad* %0, %struct.parport_joypad** %2, align 8
  %6 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %7 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PPRDATA, align 4
  %10 = call i64 @ioctl(i32 %8, i32 %9, i8* %4)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %123

13:                                               ; preds = %1
  %14 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %15 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PPRSTATUS, align 4
  %18 = call i64 @ioctl(i32 %16, i32 %17, i8* %5)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %123

21:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %56, %21
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 8
  br i1 %24, label %25, label %59

25:                                               ; preds = %22
  %26 = load i8, i8* %4, align 1
  %27 = sext i8 %26 to i32
  %28 = load i32, i32* %3, align 4
  %29 = shl i32 1, %28
  %30 = call signext i8 @UINT8_C(i32 %29)
  %31 = sext i8 %30 to i32
  %32 = and i32 %27, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %25
  %35 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %36 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %45 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @BIT32_SET(i32 %46, i32 %47)
  br label %55

49:                                               ; preds = %34, %25
  %50 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %51 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @BIT32_CLEAR(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %49, %43
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %22

59:                                               ; preds = %22
  store i32 3, i32* %3, align 4
  br label %60

60:                                               ; preds = %97, %59
  %61 = load i32, i32* %3, align 4
  %62 = icmp slt i32 %61, 8
  br i1 %62, label %63, label %100

63:                                               ; preds = %60
  %64 = load i8, i8* %5, align 1
  %65 = sext i8 %64 to i32
  %66 = load i32, i32* %3, align 4
  %67 = shl i32 1, %66
  %68 = call signext i8 @UINT8_C(i32 %67)
  %69 = sext i8 %68 to i32
  %70 = and i32 %65, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %89, label %72

72:                                               ; preds = %63
  %73 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %74 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 5
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %72
  %83 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %84 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 5
  %88 = call i32 @BIT32_SET(i32 %85, i32 %87)
  br label %96

89:                                               ; preds = %72, %63
  %90 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %91 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 5
  %95 = call i32 @BIT32_CLEAR(i32 %92, i32 %94)
  br label %96

96:                                               ; preds = %89, %82
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %3, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %3, align 4
  br label %60

100:                                              ; preds = %60
  %101 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %102 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @BIT32_GET(i32 %103, i32 12)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %100
  %107 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %108 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %107, i32 0, i32 1
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 12
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %115 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @BIT32_CLEAR(i32 %116, i32 12)
  br label %123

118:                                              ; preds = %106, %100
  %119 = load %struct.parport_joypad*, %struct.parport_joypad** %2, align 8
  %120 = getelementptr inbounds %struct.parport_joypad, %struct.parport_joypad* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @BIT32_SET(i32 %121, i32 12)
  br label %123

123:                                              ; preds = %12, %20, %118, %113
  ret void
}

declare dso_local i64 @ioctl(i32, i32, i8*) #1

declare dso_local signext i8 @UINT8_C(i32) #1

declare dso_local i32 @BIT32_SET(i32, i32) #1

declare dso_local i32 @BIT32_CLEAR(i32, i32) #1

declare dso_local i64 @BIT32_GET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
