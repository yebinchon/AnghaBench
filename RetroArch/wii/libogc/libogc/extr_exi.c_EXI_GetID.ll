; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c_EXI_GetID.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c_EXI_GetID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@eximap = common dso_local global %struct.TYPE_3__* null, align 8
@EXI_CHANNEL_2 = common dso_local global i64 0, align 8
@EXI_DEVICE_0 = common dso_local global i64 0, align 8
@last_exi_idtime = common dso_local global i64* null, align 8
@__unlocked_handler = common dso_local global i32* null, align 8
@EXI_SPEED1MHZ = common dso_local global i32 0, align 4
@EXI_WRITE = common dso_local global i32 0, align 4
@EXI_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @EXI_GetID(i64 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %8, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @eximap, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i64 %15
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %13, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @EXI_CHANNEL_2, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @EXI_DEVICE_0, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @__exi_probe(i64 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i64 0, i64* %4, align 8
  br label %132

29:                                               ; preds = %24
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** @last_exi_idtime, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %32, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  store i64 1, i64* %4, align 8
  br label %132

43:                                               ; preds = %29
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @__exi_attach(i64 %44, i32* null)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i64 0, i64* %4, align 8
  br label %132

48:                                               ; preds = %43
  %49 = load i64*, i64** @last_exi_idtime, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %8, align 8
  br label %53

53:                                               ; preds = %48, %20, %3
  store i64 0, i64* %10, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @EXI_CHANNEL_2, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* @EXI_DEVICE_0, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i64 1, i64* %10, align 8
  br label %62

62:                                               ; preds = %61, %57, %53
  %63 = load i64, i64* %10, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i32*, i32** @__unlocked_handler, align 8
  %69 = call i64 @EXI_Lock(i64 %66, i64 %67, i32* %68)
  store i64 %69, i64* %9, align 8
  br label %74

70:                                               ; preds = %62
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i64 @EXI_Lock(i64 %71, i64 %72, i32* null)
  store i64 %73, i64* %9, align 8
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i64, i64* %9, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %74
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %6, align 8
  %80 = load i32, i32* @EXI_SPEED1MHZ, align 4
  %81 = call i32 @EXI_Select(i64 %78, i64 %79, i32 %80)
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %99

83:                                               ; preds = %77
  store i32 0, i32* %11, align 4
  %84 = load i64, i64* %5, align 8
  %85 = load i32, i32* @EXI_WRITE, align 4
  %86 = call i32 @EXI_Imm(i64 %84, i32* %11, i32 2, i32 %85, i32* null)
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @EXI_Sync(i64 %87)
  %89 = load i64, i64* %5, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* @EXI_READ, align 4
  %92 = call i32 @EXI_Imm(i64 %89, i32* %90, i32 4, i32 %91, i32* null)
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @EXI_Sync(i64 %93)
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @EXI_Deselect(i64 %95)
  %97 = load i64, i64* %5, align 8
  %98 = call i32 @EXI_Unlock(i64 %97)
  br label %99

99:                                               ; preds = %83, %77
  br label %100

100:                                              ; preds = %99, %74
  %101 = load i64, i64* %5, align 8
  %102 = load i64, i64* @EXI_CHANNEL_2, align 8
  %103 = icmp ult i64 %101, %102
  br i1 %103, label %104, label %130

104:                                              ; preds = %100
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* @EXI_DEVICE_0, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %130

108:                                              ; preds = %104
  store i64 0, i64* %9, align 8
  %109 = load i64, i64* %5, align 8
  %110 = call i32 @EXI_Detach(i64 %109)
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @_CPU_ISR_Disable(i32 %111)
  %113 = load i64, i64* %8, align 8
  %114 = load i64*, i64** @last_exi_idtime, align 8
  %115 = load i64, i64* %5, align 8
  %116 = getelementptr inbounds i64, i64* %114, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %113, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %108
  %120 = load i64, i64* %8, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  store i64 1, i64* %9, align 8
  br label %127

127:                                              ; preds = %119, %108
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @_CPU_ISR_Restore(i32 %128)
  br label %130

130:                                              ; preds = %127, %104, %100
  %131 = load i64, i64* %9, align 8
  store i64 %131, i64* %4, align 8
  br label %132

132:                                              ; preds = %130, %47, %38, %28
  %133 = load i64, i64* %4, align 8
  ret i64 %133
}

declare dso_local i64 @__exi_probe(i64) #1

declare dso_local i64 @__exi_attach(i64, i32*) #1

declare dso_local i64 @EXI_Lock(i64, i64, i32*) #1

declare dso_local i32 @EXI_Select(i64, i64, i32) #1

declare dso_local i32 @EXI_Imm(i64, i32*, i32, i32, i32*) #1

declare dso_local i32 @EXI_Sync(i64) #1

declare dso_local i32 @EXI_Deselect(i64) #1

declare dso_local i32 @EXI_Unlock(i64) #1

declare dso_local i32 @EXI_Detach(i64) #1

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
