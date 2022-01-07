; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___VIInit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___VIInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@_viReg = common dso_local global i32* null, align 8
@VI_PAL = common dso_local global i32 0, align 4
@VI_DEBUG_PAL = common dso_local global i32 0, align 4
@VI_NTSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__VIInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__VIInit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct._timing*, align 8
  store i32 %0, i32* %2, align 4
  store %struct._timing* null, %struct._timing** %7, align 8
  %8 = load i32, i32* %2, align 4
  %9 = ashr i32 %8, 2
  %10 = and i32 %9, 7
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %2, align 4
  %12 = and i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %2, align 4
  %14 = and i32 %13, 2
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call %struct._timing* @__gettiming(i32 %15)
  store %struct._timing* %16, %struct._timing** %7, align 8
  store i32 0, i32* %3, align 4
  %17 = load i32*, i32** @_viReg, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 2, i32* %18, align 4
  br label %19

19:                                               ; preds = %22, %1
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 1000
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %19

25:                                               ; preds = %19
  %26 = load i32*, i32** @_viReg, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 0, i32* %27, align 4
  %28 = load %struct._timing*, %struct._timing** %7, align 8
  %29 = getelementptr inbounds %struct._timing, %struct._timing* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 8
  %32 = load %struct._timing*, %struct._timing** %7, align 8
  %33 = getelementptr inbounds %struct._timing, %struct._timing* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %31, %34
  %36 = load i32*, i32** @_viReg, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct._timing*, %struct._timing** %7, align 8
  %39 = getelementptr inbounds %struct._timing, %struct._timing* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** @_viReg, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct._timing*, %struct._timing** %7, align 8
  %44 = getelementptr inbounds %struct._timing, %struct._timing* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 1
  %47 = load i32*, i32** @_viReg, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct._timing*, %struct._timing** %7, align 8
  %50 = getelementptr inbounds %struct._timing, %struct._timing* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 7
  %53 = load %struct._timing*, %struct._timing** %7, align 8
  %54 = getelementptr inbounds %struct._timing, %struct._timing* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %52, %55
  %57 = load i32*, i32** @_viReg, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 5
  store i32 %56, i32* %58, align 4
  %59 = load %struct._timing*, %struct._timing** %7, align 8
  %60 = getelementptr inbounds %struct._timing, %struct._timing* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** @_viReg, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct._timing*, %struct._timing** %7, align 8
  %65 = getelementptr inbounds %struct._timing, %struct._timing* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 2
  %68 = load i32*, i32** @_viReg, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 6
  store i32 %67, i32* %69, align 4
  %70 = load %struct._timing*, %struct._timing** %7, align 8
  %71 = getelementptr inbounds %struct._timing, %struct._timing* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct._timing*, %struct._timing** %7, align 8
  %74 = getelementptr inbounds %struct._timing, %struct._timing* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = shl i32 %75, 1
  %77 = sub nsw i32 %76, 2
  %78 = add nsw i32 %72, %77
  %79 = load i32*, i32** @_viReg, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 7
  store i32 %78, i32* %80, align 4
  %81 = load %struct._timing*, %struct._timing** %7, align 8
  %82 = getelementptr inbounds %struct._timing, %struct._timing* %81, i32 0, i32 10
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 2
  %85 = load i32*, i32** @_viReg, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 8
  store i32 %84, i32* %86, align 4
  %87 = load %struct._timing*, %struct._timing** %7, align 8
  %88 = getelementptr inbounds %struct._timing, %struct._timing* %87, i32 0, i32 11
  %89 = load i32, i32* %88, align 4
  %90 = load %struct._timing*, %struct._timing** %7, align 8
  %91 = getelementptr inbounds %struct._timing, %struct._timing* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 1
  %94 = sub nsw i32 %93, 2
  %95 = add nsw i32 %89, %94
  %96 = load i32*, i32** @_viReg, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 9
  store i32 %95, i32* %97, align 4
  %98 = load %struct._timing*, %struct._timing** %7, align 8
  %99 = getelementptr inbounds %struct._timing, %struct._timing* %98, i32 0, i32 12
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 5
  %102 = load %struct._timing*, %struct._timing** %7, align 8
  %103 = getelementptr inbounds %struct._timing, %struct._timing* %102, i32 0, i32 13
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %101, %104
  %106 = load i32*, i32** @_viReg, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 10
  store i32 %105, i32* %107, align 4
  %108 = load %struct._timing*, %struct._timing** %7, align 8
  %109 = getelementptr inbounds %struct._timing, %struct._timing* %108, i32 0, i32 14
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %110, 5
  %112 = load %struct._timing*, %struct._timing** %7, align 8
  %113 = getelementptr inbounds %struct._timing, %struct._timing* %112, i32 0, i32 15
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %111, %114
  %116 = load i32*, i32** @_viReg, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 11
  store i32 %115, i32* %117, align 4
  %118 = load %struct._timing*, %struct._timing** %7, align 8
  %119 = getelementptr inbounds %struct._timing, %struct._timing* %118, i32 0, i32 16
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 5
  %122 = load %struct._timing*, %struct._timing** %7, align 8
  %123 = getelementptr inbounds %struct._timing, %struct._timing* %122, i32 0, i32 17
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %121, %124
  %126 = load i32*, i32** @_viReg, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 12
  store i32 %125, i32* %127, align 4
  %128 = load %struct._timing*, %struct._timing** %7, align 8
  %129 = getelementptr inbounds %struct._timing, %struct._timing* %128, i32 0, i32 18
  %130 = load i32, i32* %129, align 4
  %131 = shl i32 %130, 5
  %132 = load %struct._timing*, %struct._timing** %7, align 8
  %133 = getelementptr inbounds %struct._timing, %struct._timing* %132, i32 0, i32 19
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %131, %134
  %136 = load i32*, i32** @_viReg, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 13
  store i32 %135, i32* %137, align 4
  %138 = load %struct._timing*, %struct._timing** %7, align 8
  %139 = getelementptr inbounds %struct._timing, %struct._timing* %138, i32 0, i32 20
  %140 = load i32, i32* %139, align 4
  %141 = sdiv i32 %140, 2
  %142 = add nsw i32 %141, 1
  %143 = or i32 4096, %142
  %144 = load i32*, i32** @_viReg, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 24
  store i32 %143, i32* %145, align 4
  %146 = load %struct._timing*, %struct._timing** %7, align 8
  %147 = getelementptr inbounds %struct._timing, %struct._timing* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  %150 = load i32*, i32** @_viReg, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 25
  store i32 %149, i32* %151, align 4
  %152 = load i32*, i32** @_viReg, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 26
  store i32 4097, i32* %153, align 4
  %154 = load i32*, i32** @_viReg, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 27
  store i32 1, i32* %155, align 4
  %156 = load i32*, i32** @_viReg, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 36
  store i32 10280, i32* %157, align 4
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @VI_PAL, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %25
  %162 = load i32, i32* %4, align 4
  %163 = load i32, i32* @VI_DEBUG_PAL, align 4
  %164 = icmp sge i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i32, i32* @VI_NTSC, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %165, %161, %25
  %168 = load i32, i32* %6, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %167
  %171 = load i32, i32* %4, align 4
  %172 = shl i32 %171, 8
  %173 = or i32 %172, 5
  %174 = load i32*, i32** @_viReg, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 1
  store i32 %173, i32* %175, align 4
  %176 = load i32*, i32** @_viReg, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 54
  store i32 1, i32* %177, align 4
  br label %189

178:                                              ; preds = %167
  %179 = load i32, i32* %4, align 4
  %180 = shl i32 %179, 8
  %181 = load i32, i32* %5, align 4
  %182 = shl i32 %181, 2
  %183 = or i32 %180, %182
  %184 = or i32 %183, 1
  %185 = load i32*, i32** @_viReg, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  store i32 %184, i32* %186, align 4
  %187 = load i32*, i32** @_viReg, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 54
  store i32 0, i32* %188, align 4
  br label %189

189:                                              ; preds = %178, %170
  ret void
}

declare dso_local %struct._timing* @__gettiming(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
