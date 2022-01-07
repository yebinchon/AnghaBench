; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_calculate_extended_ir.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_calculate_extended_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ir_dot_t* }
%struct.ir_dot_t = type { i32, i32, i32, i32 }

@WIIMOTE_STATE_ACC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calculate_extended_ir(%struct.wiimote_t* %0, i32* %1) #0 {
  %3 = alloca %struct.wiimote_t*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ir_dot_t*, align 8
  %6 = alloca i32, align 4
  store %struct.wiimote_t* %0, %struct.wiimote_t** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %8 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ir_dot_t*, %struct.ir_dot_t** %9, align 8
  store %struct.ir_dot_t* %10, %struct.ir_dot_t** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %129, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %132

14:                                               ; preds = %11
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = mul nsw i32 3, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = mul nsw i32 3, %22
  %24 = add nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 48
  %29 = shl i32 %28, 4
  %30 = or i32 %20, %29
  %31 = sub nsw i32 1023, %30
  %32 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %32, i64 %34
  %36 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %35, i32 0, i32 0
  store i32 %31, i32* %36, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 3, %38
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 3, %45
  %47 = add nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 192
  %52 = shl i32 %51, 2
  %53 = or i32 %43, %52
  %54 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %54, i64 %56
  %58 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %57, i32 0, i32 1
  store i32 %53, i32* %58, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = mul nsw i32 3, %60
  %62 = add nsw i32 %61, 2
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %59, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %66, i64 %68
  %70 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %69, i32 0, i32 2
  store i32 %65, i32* %70, align 4
  %71 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %71, i64 %73
  %75 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @BIG_ENDIAN_SHORT(i32 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %79, i64 %81
  %83 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %82, i32 0, i32 0
  store i32 %78, i32* %83, align 4
  %84 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %84, i64 %86
  %88 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i8* @BIG_ENDIAN_SHORT(i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %92, i64 %94
  %96 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %95, i32 0, i32 1
  store i32 %91, i32* %96, align 4
  %97 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %97, i64 %99
  %101 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 15
  %104 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %104, i64 %106
  %108 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %107, i32 0, i32 2
  store i32 %103, i32* %108, align 4
  %109 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %109, i64 %111
  %113 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 1023
  br i1 %115, label %116, label %122

116:                                              ; preds = %14
  %117 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %117, i64 %119
  %121 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %120, i32 0, i32 3
  store i32 0, i32* %121, align 4
  br label %128

122:                                              ; preds = %14
  %123 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %123, i64 %125
  %127 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %126, i32 0, i32 3
  store i32 1, i32* %127, align 4
  br label %128

128:                                              ; preds = %122, %116
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %11

132:                                              ; preds = %11
  %133 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %134 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %133, i32 0, i32 1
  %135 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %136 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %135, i32 0, i32 0
  %137 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %138 = load i32, i32* @WIIMOTE_STATE_ACC, align 4
  %139 = call i32 @WIIMOTE_IS_SET(%struct.wiimote_t* %137, i32 %138)
  %140 = call i32 @interpret_ir_data(%struct.TYPE_2__* %134, i32* %136, i32 %139)
  ret void
}

declare dso_local i8* @BIG_ENDIAN_SHORT(i32) #1

declare dso_local i32 @interpret_ir_data(%struct.TYPE_2__*, i32*, i32) #1

declare dso_local i32 @WIIMOTE_IS_SET(%struct.wiimote_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
