; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_CopyTex.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_CopyTex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }

@__gx = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_CopyTex(i8* %0, i32 %1) #0 {
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
  %12 = load i32, i32* %11, align 8
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
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %6, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 7
  %34 = icmp ne i32 %33, 3
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  store i32 1, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, -8
  %38 = or i32 %37, 3
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %31, %23
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 7
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %54

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 64
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  store i32 1, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %51, -65
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53, %42
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @GX_LOAD_BP_REG(i32 %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @MEM_VIRTUAL_TO_PHYSICAL(i8* %61)
  %63 = call i32 @_SHIFTR(i32 %62, i32 5, i32 24)
  %64 = or i32 1258291200, %63
  store i32 %64, i32* %6, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @GX_LOAD_BP_REG(i32 %67)
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @GX_LOAD_BP_REG(i32 %71)
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @GX_LOAD_BP_REG(i32 %75)
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @GX_LOAD_BP_REG(i32 %77)
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, -2049
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @_SHIFTL(i32 %83, i32 11, i32 1)
  %85 = or i32 %82, %84
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = and i32 %90, -16385
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, 16777215
  %98 = call i32 @_SHIFTL(i32 82, i32 24, i32 8)
  %99 = or i32 %97, %98
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 6
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @GX_LOAD_BP_REG(i32 %104)
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %60
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @GX_LOAD_BP_REG(i32 %111)
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @GX_LOAD_BP_REG(i32 %115)
  br label %117

117:                                              ; preds = %108, %60
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @GX_LOAD_BP_REG(i32 %123)
  br label %125

125:                                              ; preds = %120, %117
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
