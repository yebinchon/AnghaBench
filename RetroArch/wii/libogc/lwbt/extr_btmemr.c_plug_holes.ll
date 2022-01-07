; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btmemr.c_plug_holes.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_btmemr.c_plug_holes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem = type { i64, i64, i32 }

@ram_block = common dso_local global i32* null, align 8
@ram_end = common dso_local global i64 0, align 8
@ram_free = common dso_local global %struct.mem* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem*)* @plug_holes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plug_holes(%struct.mem* %0) #0 {
  %2 = alloca %struct.mem*, align 8
  %3 = alloca %struct.mem*, align 8
  %4 = alloca %struct.mem*, align 8
  store %struct.mem* %0, %struct.mem** %2, align 8
  %5 = load i32*, i32** @ram_block, align 8
  %6 = load %struct.mem*, %struct.mem** %2, align 8
  %7 = getelementptr inbounds %struct.mem, %struct.mem* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i32, i32* %5, i64 %8
  %10 = bitcast i32* %9 to %struct.mem*
  store %struct.mem* %10, %struct.mem** %3, align 8
  %11 = load %struct.mem*, %struct.mem** %2, align 8
  %12 = load %struct.mem*, %struct.mem** %3, align 8
  %13 = icmp ne %struct.mem* %11, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %1
  %15 = load %struct.mem*, %struct.mem** %3, align 8
  %16 = getelementptr inbounds %struct.mem, %struct.mem* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %14
  %20 = load %struct.mem*, %struct.mem** %3, align 8
  %21 = bitcast %struct.mem* %20 to i32*
  %22 = load i64, i64* @ram_end, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = icmp ne i32* %21, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %19
  %26 = load %struct.mem*, %struct.mem** @ram_free, align 8
  %27 = load %struct.mem*, %struct.mem** %3, align 8
  %28 = icmp eq %struct.mem* %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load %struct.mem*, %struct.mem** %2, align 8
  store %struct.mem* %30, %struct.mem** @ram_free, align 8
  br label %31

31:                                               ; preds = %29, %25
  %32 = load %struct.mem*, %struct.mem** %3, align 8
  %33 = getelementptr inbounds %struct.mem, %struct.mem* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.mem*, %struct.mem** %2, align 8
  %36 = getelementptr inbounds %struct.mem, %struct.mem* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.mem*, %struct.mem** %2, align 8
  %38 = bitcast %struct.mem* %37 to i32*
  %39 = load i32*, i32** @ram_block, align 8
  %40 = ptrtoint i32* %38 to i64
  %41 = ptrtoint i32* %39 to i64
  %42 = sub i64 %40, %41
  %43 = sdiv exact i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = load i32*, i32** @ram_block, align 8
  %46 = load %struct.mem*, %struct.mem** %3, align 8
  %47 = getelementptr inbounds %struct.mem, %struct.mem* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = bitcast i32* %49 to %struct.mem*
  %51 = getelementptr inbounds %struct.mem, %struct.mem* %50, i32 0, i32 2
  store i32 %44, i32* %51, align 8
  br label %52

52:                                               ; preds = %31, %19, %14, %1
  %53 = load i32*, i32** @ram_block, align 8
  %54 = load %struct.mem*, %struct.mem** %2, align 8
  %55 = getelementptr inbounds %struct.mem, %struct.mem* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %53, i64 %57
  %59 = bitcast i32* %58 to %struct.mem*
  store %struct.mem* %59, %struct.mem** %4, align 8
  %60 = load %struct.mem*, %struct.mem** %4, align 8
  %61 = load %struct.mem*, %struct.mem** %2, align 8
  %62 = icmp ne %struct.mem* %60, %61
  br i1 %62, label %63, label %95

63:                                               ; preds = %52
  %64 = load %struct.mem*, %struct.mem** %4, align 8
  %65 = getelementptr inbounds %struct.mem, %struct.mem* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %63
  %69 = load %struct.mem*, %struct.mem** @ram_free, align 8
  %70 = load %struct.mem*, %struct.mem** %2, align 8
  %71 = icmp eq %struct.mem* %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load %struct.mem*, %struct.mem** %4, align 8
  store %struct.mem* %73, %struct.mem** @ram_free, align 8
  br label %74

74:                                               ; preds = %72, %68
  %75 = load %struct.mem*, %struct.mem** %2, align 8
  %76 = getelementptr inbounds %struct.mem, %struct.mem* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.mem*, %struct.mem** %4, align 8
  %79 = getelementptr inbounds %struct.mem, %struct.mem* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load %struct.mem*, %struct.mem** %4, align 8
  %81 = bitcast %struct.mem* %80 to i32*
  %82 = load i32*, i32** @ram_block, align 8
  %83 = ptrtoint i32* %81 to i64
  %84 = ptrtoint i32* %82 to i64
  %85 = sub i64 %83, %84
  %86 = sdiv exact i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = load i32*, i32** @ram_block, align 8
  %89 = load %struct.mem*, %struct.mem** %2, align 8
  %90 = getelementptr inbounds %struct.mem, %struct.mem* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = bitcast i32* %92 to %struct.mem*
  %94 = getelementptr inbounds %struct.mem, %struct.mem* %93, i32 0, i32 2
  store i32 %87, i32* %94, align 8
  br label %95

95:                                               ; preds = %74, %63, %52
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
