; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___setFbbRegs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_video.c___setFbbRegs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._horVer = type { i32, i64, i32, i32, i32, i32, i32, i64, i64 }

@regs = common dso_local global i32* null, align 8
@changed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._horVer*, i32*, i32*, i32*, i32*)* @__setFbbRegs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__setFbbRegs(%struct._horVer* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct._horVer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct._horVer* %0, %struct._horVer** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct._horVer*, %struct._horVer** %6, align 8
  %13 = getelementptr inbounds %struct._horVer, %struct._horVer* %12, i32 0, i32 8
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = load %struct._horVer*, %struct._horVer** %6, align 8
  %17 = getelementptr inbounds %struct._horVer, %struct._horVer* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = load %struct._horVer*, %struct._horVer** %6, align 8
  %20 = getelementptr inbounds %struct._horVer, %struct._horVer* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct._horVer*, %struct._horVer** %6, align 8
  %23 = getelementptr inbounds %struct._horVer, %struct._horVer* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct._horVer*, %struct._horVer** %6, align 8
  %26 = getelementptr inbounds %struct._horVer, %struct._horVer* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct._horVer*, %struct._horVer** %6, align 8
  %29 = getelementptr inbounds %struct._horVer, %struct._horVer* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @__calcFbbs(i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32* %31, i32* %32)
  %34 = load %struct._horVer*, %struct._horVer** %6, align 8
  %35 = getelementptr inbounds %struct._horVer, %struct._horVer* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %5
  %39 = load %struct._horVer*, %struct._horVer** %6, align 8
  %40 = getelementptr inbounds %struct._horVer, %struct._horVer* %39, i32 0, i32 7
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct._horVer*, %struct._horVer** %6, align 8
  %44 = getelementptr inbounds %struct._horVer, %struct._horVer* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load %struct._horVer*, %struct._horVer** %6, align 8
  %47 = getelementptr inbounds %struct._horVer, %struct._horVer* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct._horVer*, %struct._horVer** %6, align 8
  %50 = getelementptr inbounds %struct._horVer, %struct._horVer* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct._horVer*, %struct._horVer** %6, align 8
  %53 = getelementptr inbounds %struct._horVer, %struct._horVer* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct._horVer*, %struct._horVer** %6, align 8
  %56 = getelementptr inbounds %struct._horVer, %struct._horVer* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @__calcFbbs(i32 %42, i32 %45, i32 %48, i32 %51, i32 %54, i32 %57, i32* %58, i32* %59)
  br label %61

61:                                               ; preds = %38, %5
  store i32 1, i32* %11, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 16777216
  br i1 %64, label %65, label %78

65:                                               ; preds = %61
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %67, 16777216
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 16777216
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %75, 16777216
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %77, %73, %69, %65, %61
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %78
  %82 = load i32*, i32** %7, align 8
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 5
  store i32 %84, i32* %82, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 5
  store i32 %87, i32* %85, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 5
  store i32 %90, i32* %88, align 4
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, 5
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %81, %78
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @_SHIFTL(i32 %95, i32 12, i32 1)
  %97 = load %struct._horVer*, %struct._horVer** %6, align 8
  %98 = getelementptr inbounds %struct._horVer, %struct._horVer* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @_SHIFTL(i32 %99, i32 8, i32 4)
  %101 = or i32 %96, %100
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @_SHIFTR(i32 %103, i32 16, i32 8)
  %105 = or i32 %101, %104
  %106 = load i32*, i32** @regs, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 14
  store i32 %105, i32* %107, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 65535
  %111 = load i32*, i32** @regs, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 15
  store i32 %110, i32* %112, align 4
  %113 = call i32 @VI_REGCHANGE(i32 14)
  %114 = load i32, i32* @changed, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* @changed, align 4
  %116 = call i32 @VI_REGCHANGE(i32 15)
  %117 = load i32, i32* @changed, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* @changed, align 4
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @_SHIFTR(i32 %120, i32 16, i32 8)
  %122 = load i32*, i32** @regs, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 18
  store i32 %121, i32* %123, align 4
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 65535
  %127 = load i32*, i32** @regs, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 19
  store i32 %126, i32* %128, align 4
  %129 = call i32 @VI_REGCHANGE(i32 18)
  %130 = load i32, i32* @changed, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* @changed, align 4
  %132 = call i32 @VI_REGCHANGE(i32 19)
  %133 = load i32, i32* @changed, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* @changed, align 4
  %135 = load %struct._horVer*, %struct._horVer** %6, align 8
  %136 = getelementptr inbounds %struct._horVer, %struct._horVer* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %172

139:                                              ; preds = %94
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @_SHIFTR(i32 %141, i32 16, i32 8)
  %143 = load i32*, i32** @regs, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 16
  store i32 %142, i32* %144, align 4
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 65535
  %148 = load i32*, i32** @regs, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 17
  store i32 %147, i32* %149, align 4
  %150 = call i32 @VI_REGCHANGE(i32 16)
  %151 = load i32, i32* @changed, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* @changed, align 4
  %153 = call i32 @VI_REGCHANGE(i32 17)
  %154 = load i32, i32* @changed, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* @changed, align 4
  %156 = load i32*, i32** %10, align 8
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @_SHIFTR(i32 %157, i32 16, i32 8)
  %159 = load i32*, i32** @regs, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 20
  store i32 %158, i32* %160, align 4
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 65535
  %164 = load i32*, i32** @regs, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 21
  store i32 %163, i32* %165, align 4
  %166 = call i32 @VI_REGCHANGE(i32 20)
  %167 = load i32, i32* @changed, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* @changed, align 4
  %169 = call i32 @VI_REGCHANGE(i32 21)
  %170 = load i32, i32* @changed, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* @changed, align 4
  br label %172

172:                                              ; preds = %139, %94
  ret void
}

declare dso_local i32 @__calcFbbs(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @_SHIFTR(i32, i32, i32) #1

declare dso_local i32 @VI_REGCHANGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
