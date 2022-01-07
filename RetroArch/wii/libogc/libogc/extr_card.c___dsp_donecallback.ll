; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___dsp_donecallback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___dsp_donecallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i32 }

@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@cardmap = common dso_local global %struct.TYPE_3__* null, align 8
@tmp_buffer = common dso_local global i32 0, align 4
@CARD_ERROR_NOCARD = common dso_local global i64 0, align 8
@CARD_STATUS_UNLOCKED = common dso_local global i32 0, align 4
@CARD_ERROR_IOERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @__dsp_donecallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dsp_donecallback(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %10, align 8
  store i64 0, i64* %5, align 8
  br label %17

17:                                               ; preds = %30, %1
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @EXI_CHANNEL_2, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %17
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cardmap, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  store %struct.TYPE_3__* %24, %struct.TYPE_3__** %10, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32*, i32** %2, align 8
  %28 = icmp eq i32* %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %33

30:                                               ; preds = %21
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %5, align 8
  br label %17

33:                                               ; preds = %29, %17
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @EXI_CHANNEL_2, align 8
  %36 = icmp uge i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %152

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 47
  %44 = and i64 %43, -32
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = inttoptr i64 %45 to i64*
  %47 = getelementptr inbounds i64, i64* %46, i64 8
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = xor i64 %49, %52
  %54 = and i64 %53, -65536
  store i64 %54, i64* %9, align 8
  %55 = call i64 (...) @__card_dummylen()
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* @tmp_buffer, align 4
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @__card_readarrayunlock(i64 %56, i64 %57, i32 %58, i64 %59, i32 1)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %38
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @EXI_Unlock(i64 %63)
  %65 = load i64, i64* %5, align 8
  %66 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  %67 = call i32 @__card_mountcallback(i64 %65, i64 %66)
  br label %152

68:                                               ; preds = %38
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %72, %75
  %77 = add i64 %76, 4
  %78 = shl i64 %77, 3
  %79 = add i64 %78, 1
  %80 = call i64 @exnor(i64 %71, i64 %79)
  store i64 %80, i64* %9, align 8
  %81 = load i64, i64* %9, align 8
  %82 = shl i64 %81, 23
  store i64 %82, i64* %11, align 8
  %83 = load i64, i64* %9, align 8
  %84 = shl i64 %83, 15
  store i64 %84, i64* %12, align 8
  %85 = load i64, i64* %9, align 8
  %86 = shl i64 %85, 7
  store i64 %86, i64* %13, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load i64, i64* %13, align 8
  %89 = xor i64 %87, %88
  store i64 %89, i64* %14, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i64, i64* %14, align 8
  %92 = xor i64 %90, %91
  store i64 %92, i64* %15, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %15, align 8
  %95 = xor i64 %93, %94
  %96 = xor i64 %95, -1
  store i64 %96, i64* %16, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %16, align 8
  %99 = lshr i64 %98, 31
  %100 = or i64 %97, %99
  store i64 %100, i64* %14, align 8
  %101 = load i64, i64* %14, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load i64, i64* %7, align 8
  %105 = shl i64 %104, 16
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = xor i64 %105, %108
  %110 = and i64 %109, -65536
  store i64 %110, i64* %9, align 8
  %111 = call i64 (...) @__card_dummylen()
  store i64 %111, i64* %6, align 8
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i32, i32* @tmp_buffer, align 4
  %115 = load i64, i64* %6, align 8
  %116 = call i64 @__card_readarrayunlock(i64 %112, i64 %113, i32 %114, i64 %115, i32 1)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %68
  %119 = load i64, i64* %5, align 8
  %120 = call i32 @EXI_Unlock(i64 %119)
  %121 = load i64, i64* %5, align 8
  %122 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  %123 = call i32 @__card_mountcallback(i64 %121, i64 %122)
  br label %152

124:                                              ; preds = %68
  %125 = load i64, i64* %5, align 8
  %126 = call i64 @__card_readstatus(i64 %125, i32* %3)
  store i64 %126, i64* %4, align 8
  %127 = load i64, i64* %5, align 8
  %128 = call i64 @EXI_Probe(i64 %127)
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = load i64, i64* %5, align 8
  %132 = call i32 @EXI_Unlock(i64 %131)
  %133 = load i64, i64* %5, align 8
  %134 = load i64, i64* @CARD_ERROR_NOCARD, align 8
  %135 = call i32 @__card_mountcallback(i64 %133, i64 %134)
  br label %152

136:                                              ; preds = %124
  %137 = load i64, i64* %4, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %148, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* @CARD_STATUS_UNLOCKED, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %139
  %145 = load i64, i64* %5, align 8
  %146 = call i32 @EXI_Unlock(i64 %145)
  %147 = load i64, i64* @CARD_ERROR_IOERROR, align 8
  store i64 %147, i64* %4, align 8
  br label %148

148:                                              ; preds = %144, %139, %136
  %149 = load i64, i64* %5, align 8
  %150 = load i64, i64* %4, align 8
  %151 = call i32 @__card_mountcallback(i64 %149, i64 %150)
  br label %152

152:                                              ; preds = %148, %130, %118, %62, %37
  ret void
}

declare dso_local i64 @__card_dummylen(...) #1

declare dso_local i64 @__card_readarrayunlock(i64, i64, i32, i64, i32) #1

declare dso_local i32 @EXI_Unlock(i64) #1

declare dso_local i32 @__card_mountcallback(i64, i64) #1

declare dso_local i64 @exnor(i64, i64) #1

declare dso_local i64 @__card_readstatus(i64, i32*) #1

declare dso_local i64 @EXI_Probe(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
