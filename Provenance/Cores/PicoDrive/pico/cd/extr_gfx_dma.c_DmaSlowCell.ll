; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_gfx_dma.c_DmaSlowCell.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_gfx_dma.c_DmaSlowCell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8**, i32* }
%struct.TYPE_8__ = type { i8**, i8**, i8**, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i8* }
%struct.TYPE_5__ = type { i32 }

@Pico_mcd = common dso_local global %struct.TYPE_7__* null, align 8
@Pico = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@PDRAW_SPRITES_MOVED = common dso_local global i32 0, align 4
@rendstatus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DmaSlowCell(i32 %0, i32 %1, i32 %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8 %3, i8* %8, align 1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Pico_mcd, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Pico_mcd, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %15, i64 %22
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %9, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 3, i32 0), align 8
  switch i32 %25, label %157 [
    i32 1, label %26
    i32 3, label %67
    i32 5, label %112
  ]

26:                                               ; preds = %4
  %27 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0), align 8
  store i8** %27, i8*** %12, align 8
  br label %28

28:                                               ; preds = %60, %26
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %63

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = lshr i32 %32, 2
  %34 = call i32 @cell_map(i32 %33)
  %35 = shl i32 %34, 2
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 2
  %38 = load i32, i32* %10, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %10, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = bitcast i8* %43 to i8**
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** %12, align 8
  %47 = load i32, i32* %6, align 4
  %48 = lshr i32 %47, 1
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %46, i64 %49
  store i8* %45, i8** %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, 2
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i8, i8* %8, align 1
  %55 = zext i8 %54 to i32
  %56 = add i32 %53, %55
  %57 = zext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = ptrtoint i8* %58 to i32
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %31
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %7, align 4
  br label %28

63:                                               ; preds = %28
  %64 = load i32, i32* @PDRAW_SPRITES_MOVED, align 4
  %65 = load i32, i32* @rendstatus, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* @rendstatus, align 4
  br label %157

67:                                               ; preds = %4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 4, i32 0), align 8
  %68 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 1), align 8
  store i8** %68, i8*** %12, align 8
  %69 = load i32, i32* %6, align 4
  %70 = and i32 %69, 127
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %104, %67
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %107

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  %76 = lshr i32 %75, 2
  %77 = call i32 @cell_map(i32 %76)
  %78 = shl i32 %77, 2
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %5, align 4
  %80 = and i32 %79, 2
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = bitcast i8* %86 to i8**
  %88 = load i8*, i8** %87, align 8
  %89 = load i8**, i8*** %12, align 8
  %90 = load i32, i32* %11, align 4
  %91 = lshr i32 %90, 1
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %89, i64 %92
  store i8* %88, i8** %93, align 8
  %94 = load i32, i32* %5, align 4
  %95 = add i32 %94, 2
  store i32 %95, i32* %5, align 4
  %96 = load i8, i8* %8, align 1
  %97 = zext i8 %96 to i32
  %98 = load i32, i32* %11, align 4
  %99 = add i32 %98, %97
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp uge i32 %100, 128
  br i1 %101, label %102, label %103

102:                                              ; preds = %74
  br label %107

103:                                              ; preds = %74
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, -1
  store i32 %106, i32* %7, align 4
  br label %71

107:                                              ; preds = %102, %71
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, 65280
  %110 = load i32, i32* %11, align 4
  %111 = or i32 %109, %110
  store i32 %111, i32* %6, align 4
  br label %157

112:                                              ; preds = %4
  %113 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 2), align 8
  store i8** %113, i8*** %12, align 8
  %114 = load i32, i32* %6, align 4
  %115 = and i32 %114, 127
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %149, %112
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %152

119:                                              ; preds = %116
  %120 = load i32, i32* %5, align 4
  %121 = lshr i32 %120, 2
  %122 = call i32 @cell_map(i32 %121)
  %123 = shl i32 %122, 2
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %5, align 4
  %125 = and i32 %124, 2
  %126 = load i32, i32* %10, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %10, align 4
  %128 = load i8*, i8** %9, align 8
  %129 = load i32, i32* %10, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = bitcast i8* %131 to i8**
  %133 = load i8*, i8** %132, align 8
  %134 = load i8**, i8*** %12, align 8
  %135 = load i32, i32* %11, align 4
  %136 = lshr i32 %135, 1
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %134, i64 %137
  store i8* %133, i8** %138, align 8
  %139 = load i32, i32* %5, align 4
  %140 = add i32 %139, 2
  store i32 %140, i32* %5, align 4
  %141 = load i8, i8* %8, align 1
  %142 = zext i8 %141 to i32
  %143 = load i32, i32* %11, align 4
  %144 = add i32 %143, %142
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = icmp uge i32 %145, 128
  br i1 %146, label %147, label %148

147:                                              ; preds = %119
  br label %152

148:                                              ; preds = %119
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %7, align 4
  br label %116

152:                                              ; preds = %147, %116
  %153 = load i32, i32* %6, align 4
  %154 = and i32 %153, 65280
  %155 = load i32, i32* %11, align 4
  %156 = or i32 %154, %155
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %4, %152, %107, %63
  %158 = load i32, i32* %6, align 4
  %159 = zext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  store i8* %160, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 3, i32 1), align 8
  ret void
}

declare dso_local i32 @cell_map(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
