; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_CopyDisp.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_CopyDisp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@__gx = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_CopyDisp(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, -16
  %14 = or i32 %13, 15
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @GX_LOAD_BP_REG(i32 %15)
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, -4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @GX_LOAD_BP_REG(i32 %21)
  br label %23

23:                                               ; preds = %9, %2
  store i32 0, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 7
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %46

32:                                               ; preds = %26, %23
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 64
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, -65
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @GX_LOAD_BP_REG(i32 %43)
  br label %45

45:                                               ; preds = %38, %32
  br label %46

46:                                               ; preds = %45, %26
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @GX_LOAD_BP_REG(i32 %49)
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @GX_LOAD_BP_REG(i32 %53)
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @GX_LOAD_BP_REG(i32 %57)
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @MEM_VIRTUAL_TO_PHYSICAL(i8* %59)
  %61 = call i32 @_SHIFTR(i32 %60, i32 5, i32 24)
  %62 = or i32 1258291200, %61
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @GX_LOAD_BP_REG(i32 %63)
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, -2049
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @_SHIFTL(i32 %69, i32 11, i32 1)
  %71 = or i32 %68, %70
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 6
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, -16385
  %78 = or i32 %77, 16384
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 16777215
  %85 = call i32 @_SHIFTL(i32 82, i32 24, i32 8)
  %86 = or i32 %84, %85
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 4
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @GX_LOAD_BP_REG(i32 %91)
  %93 = load i32, i32* %4, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %46
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @GX_LOAD_BP_REG(i32 %98)
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @GX_LOAD_BP_REG(i32 %102)
  br label %104

104:                                              ; preds = %95, %46
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @GX_LOAD_BP_REG(i32 %110)
  br label %112

112:                                              ; preds = %107, %104
  ret void
}

declare dso_local i32 @GX_LOAD_BP_REG(i32) #1

declare dso_local i32 @_SHIFTR(i32, i32, i32) #1

declare dso_local i32 @MEM_VIRTUAL_TO_PHYSICAL(i8*) #1

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
