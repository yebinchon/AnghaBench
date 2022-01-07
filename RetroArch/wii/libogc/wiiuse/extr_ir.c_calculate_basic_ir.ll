; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_calculate_basic_ir.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_calculate_basic_ir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_t = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ir_dot_t* }
%struct.ir_dot_t = type { i32, i32, i32, i64 }

@WIIMOTE_STATE_ACC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @calculate_basic_ir(%struct.wiimote_t* %0, i32* %1) #0 {
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
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 2
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 48
  %18 = shl i32 %17, 4
  %19 = or i32 %13, %18
  %20 = sub nsw i32 1023, %19
  %21 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %22 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %21, i64 0
  %23 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 192
  %31 = shl i32 %30, 2
  %32 = or i32 %26, %31
  %33 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %34 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %33, i64 0
  %35 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 3
  %43 = shl i32 %42, 8
  %44 = or i32 %38, %43
  %45 = sub nsw i32 1023, %44
  %46 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %47 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %46, i64 1
  %48 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 12
  %56 = shl i32 %55, 6
  %57 = or i32 %51, %56
  %58 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %59 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %58, i64 1
  %60 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 5
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 7
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 48
  %68 = shl i32 %67, 4
  %69 = or i32 %63, %68
  %70 = sub nsw i32 1023, %69
  %71 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %72 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %71, i64 2
  %73 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 6
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 7
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 192
  %81 = shl i32 %80, 2
  %82 = or i32 %76, %81
  %83 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %84 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %83, i64 2
  %85 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 7
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 3
  %93 = shl i32 %92, 8
  %94 = or i32 %88, %93
  %95 = sub nsw i32 1023, %94
  %96 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %97 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %96, i64 3
  %98 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 9
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %4, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 7
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 12
  %106 = shl i32 %105, 6
  %107 = or i32 %101, %106
  %108 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %109 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %108, i64 3
  %110 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %166, %2
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 4
  br i1 %113, label %114, label %169

114:                                              ; preds = %111
  %115 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %115, i64 %117
  %119 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i8* @BIG_ENDIAN_SHORT(i32 %120)
  %122 = ptrtoint i8* %121 to i32
  %123 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %123, i64 %125
  %127 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %126, i32 0, i32 0
  store i32 %122, i32* %127, align 8
  %128 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %128, i64 %130
  %132 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i8* @BIG_ENDIAN_SHORT(i32 %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %136, i64 %138
  %140 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %139, i32 0, i32 1
  store i32 %135, i32* %140, align 4
  %141 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %141, i64 %143
  %145 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 1023
  br i1 %147, label %148, label %154

148:                                              ; preds = %114
  %149 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %149, i64 %151
  %153 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %152, i32 0, i32 2
  store i32 0, i32* %153, align 8
  br label %165

154:                                              ; preds = %114
  %155 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %155, i64 %157
  %159 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %158, i32 0, i32 2
  store i32 1, i32* %159, align 8
  %160 = load %struct.ir_dot_t*, %struct.ir_dot_t** %5, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %160, i64 %162
  %164 = getelementptr inbounds %struct.ir_dot_t, %struct.ir_dot_t* %163, i32 0, i32 3
  store i64 0, i64* %164, align 8
  br label %165

165:                                              ; preds = %154, %148
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %111

169:                                              ; preds = %111
  %170 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %171 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %170, i32 0, i32 1
  %172 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %173 = getelementptr inbounds %struct.wiimote_t, %struct.wiimote_t* %172, i32 0, i32 0
  %174 = load %struct.wiimote_t*, %struct.wiimote_t** %3, align 8
  %175 = load i32, i32* @WIIMOTE_STATE_ACC, align 4
  %176 = call i32 @WIIMOTE_IS_SET(%struct.wiimote_t* %174, i32 %175)
  %177 = call i32 @interpret_ir_data(%struct.TYPE_2__* %171, i32* %173, i32 %176)
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
