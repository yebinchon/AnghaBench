; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-sound.c_SBIRQHandler.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-sound.c_SBIRQHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@format = common dso_local global i32 0, align 4
@SBPort = common dso_local global i32 0, align 4
@hbusy = common dso_local global i32 0, align 4
@SBIRQ = common dso_local global i32 0, align 4
@whichbuf = common dso_local global i32 0, align 4
@SBDMA16 = common dso_local global i32 0, align 4
@SBDMA = common dso_local global i32 0, align 4
@fragsize = common dso_local global i32 0, align 4
@LMBuffer = common dso_local global i32 0, align 4
@_dos_ds = common dso_local global i32 0, align 4
@WaveBuffer = common dso_local global i64 0, align 8
@ReadPtr = common dso_local global i32 0, align 4
@ssilence = common dso_local global i64 0, align 8
@fragtotal = common dso_local global i32 0, align 4
@soundjoyeron = common dso_local global i64 0, align 8
@SBIRQHandler.coot = internal global i32 0, align 4
@soundjoyer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @SBIRQHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SBIRQHandler(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %11 = load i32, i32* @format, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load i32, i32* @SBPort, align 4
  %15 = add nsw i32 %14, 4
  %16 = call i32 @outportb(i32 %15, i32 130)
  %17 = load i32, i32* @SBPort, align 4
  %18 = add nsw i32 %17, 5
  %19 = call i32 @inportb(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, 2
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load i32, i32* @SBPort, align 4
  %25 = add nsw i32 %24, 15
  %26 = call i32 @inportb(i32 %25)
  br label %27

27:                                               ; preds = %23, %13
  br label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @SBPort, align 4
  %30 = add nsw i32 %29, 14
  %31 = call i32 @inportb(i32 %30)
  br label %32

32:                                               ; preds = %28, %27
  %33 = load i32, i32* @hbusy, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = call i32 @outportb(i32 32, i32 32)
  %37 = load i32, i32* @SBIRQ, align 4
  %38 = icmp sge i32 %37, 8
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @outportb(i32 160, i32 32)
  br label %41

41:                                               ; preds = %39, %35
  %42 = load i32, i32* @whichbuf, align 4
  %43 = xor i32 %42, 1
  store i32 %43, i32* @whichbuf, align 4
  br label %156

44:                                               ; preds = %32
  store i32 1, i32* @hbusy, align 4
  %45 = load i32, i32* @format, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* @SBDMA16, align 4
  %49 = and i32 %48, 3
  %50 = mul nsw i32 %49, 4
  %51 = add nsw i32 %50, 194
  store i32 %51, i32* %9, align 4
  br label %56

52:                                               ; preds = %44
  %53 = load i32, i32* @SBDMA, align 4
  %54 = mul nsw i32 %53, 2
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @inportb(i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @inportb(i32 %59)
  %61 = shl i32 %60, 8
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @fragsize, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  store i32 1, i32* %8, align 4
  br label %69

68:                                               ; preds = %56
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i32, i32* @LMBuffer, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @fragsize, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* @format, align 4
  %75 = shl i32 %73, %74
  %76 = add nsw i32 %70, %75
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* @_dos_ds, align 4
  %78 = call i32 @_farsetsel(i32 %77)
  %79 = load i64, i64* @WaveBuffer, align 8
  %80 = load i32, i32* @ReadPtr, align 4
  %81 = load i32, i32* @format, align 4
  %82 = shl i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %79, %83
  %85 = inttoptr i64 %84 to i32*
  store i32* %85, i32** %3, align 8
  %86 = load i64, i64* @ssilence, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %111

88:                                               ; preds = %69
  %89 = load i32, i32* @format, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  store i32 0, i32* %10, align 4
  br label %93

92:                                               ; preds = %88
  store i32 -2139062144, i32* %10, align 4
  br label %93

93:                                               ; preds = %92, %91
  %94 = load i32, i32* @fragsize, align 4
  %95 = load i32, i32* @format, align 4
  %96 = shl i32 %94, %95
  %97 = ashr i32 %96, 2
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %105, %93
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @_farnspokel(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %108, 4
  store i32 %109, i32* %4, align 4
  br label %98

110:                                              ; preds = %98
  br label %138

111:                                              ; preds = %69
  %112 = load i32, i32* @fragsize, align 4
  %113 = load i32, i32* @format, align 4
  %114 = shl i32 %112, %113
  %115 = ashr i32 %114, 2
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %124, %111
  %117 = load i32, i32* %5, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %116
  %120 = load i32, i32* %4, align 4
  %121 = load i32*, i32** %3, align 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @_farnspokel(i32 %120, i32 %122)
  br label %124

124:                                              ; preds = %119
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, 4
  store i32 %128, i32* %4, align 4
  %129 = load i32*, i32** %3, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %3, align 8
  br label %116

131:                                              ; preds = %116
  %132 = load i32, i32* @ReadPtr, align 4
  %133 = load i32, i32* @fragsize, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* @fragtotal, align 4
  %136 = sub nsw i32 %135, 1
  %137 = and i32 %134, %136
  store i32 %137, i32* @ReadPtr, align 4
  br label %138

138:                                              ; preds = %131, %110
  %139 = load i64, i64* @soundjoyeron, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %138
  %142 = load i32, i32* @SBIRQHandler.coot, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %141
  %145 = call i32 (...) @UpdateJoyData()
  store i32 1, i32* @soundjoyer, align 4
  br label %146

146:                                              ; preds = %144, %141
  %147 = load i32, i32* @SBIRQHandler.coot, align 4
  %148 = add nsw i32 %147, 1
  %149 = and i32 %148, 3
  store i32 %149, i32* @SBIRQHandler.coot, align 4
  br label %150

150:                                              ; preds = %146, %138
  store i32 0, i32* @hbusy, align 4
  %151 = call i32 @outportb(i32 32, i32 32)
  %152 = load i32, i32* @SBIRQ, align 4
  %153 = icmp sge i32 %152, 8
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = call i32 @outportb(i32 160, i32 32)
  br label %156

156:                                              ; preds = %41, %154, %150
  ret void
}

declare dso_local i32 @outportb(i32, i32) #1

declare dso_local i32 @inportb(i32) #1

declare dso_local i32 @_farsetsel(i32) #1

declare dso_local i32 @_farnspokel(i32, i32) #1

declare dso_local i32 @UpdateJoyData(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
