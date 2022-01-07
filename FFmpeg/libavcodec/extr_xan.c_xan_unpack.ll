; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xan.c_xan_unpack.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xan.c_xan_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32)* @xan_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xan_unpack(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i32*, i32** %5, align 8
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @bytestream2_init(i32* %13, i32* %22, i32 %23)
  br label %25

25:                                               ; preds = %172, %4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %12, align 8
  %28 = icmp ult i32* %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = call i32 @bytestream2_get_bytes_left(i32* %13)
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i1 [ false, %25 ], [ %31, %29 ]
  br i1 %33, label %34, label %173

34:                                               ; preds = %32
  %35 = call i32 @bytestream2_get_byte(i32* %13)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 224
  br i1 %37, label %38, label %130

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 128
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 3
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 96
  %47 = shl i32 %46, 3
  %48 = call i32 @bytestream2_get_byte(i32* %13)
  %49 = add nsw i32 %47, %48
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 28
  %53 = ashr i32 %52, 2
  %54 = add nsw i32 %53, 3
  store i32 %54, i32* %14, align 4
  br label %84

55:                                               ; preds = %38
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, 64
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = call i32 @bytestream2_peek_byte(i32* %13)
  %61 = ashr i32 %60, 6
  store i32 %61, i32* %10, align 4
  %62 = call i32 @bytestream2_get_be16(i32* %13)
  %63 = and i32 %62, 16383
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, 63
  %67 = add nsw i32 %66, 4
  store i32 %67, i32* %14, align 4
  br label %83

68:                                               ; preds = %55
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 3
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, 16
  %73 = shl i32 %72, 12
  %74 = call i32 @bytestream2_get_be16(i32* %13)
  %75 = add nsw i32 %73, %74
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, 12
  %79 = shl i32 %78, 6
  %80 = call i32 @bytestream2_get_byte(i32* %13)
  %81 = add nsw i32 %79, %80
  %82 = add nsw i32 %81, 5
  store i32 %82, i32* %14, align 4
  br label %83

83:                                               ; preds = %68, %59
  br label %84

84:                                               ; preds = %83, %42
  %85 = load i32*, i32** %12, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = ptrtoint i32* %85 to i64
  %88 = ptrtoint i32* %86 to i64
  %89 = sub i64 %87, %88
  %90 = sdiv exact i64 %89, 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = icmp slt i64 %90, %94
  br i1 %95, label %113, label %96

96:                                               ; preds = %84
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32*, i32** %11, align 8
  %102 = ptrtoint i32* %100 to i64
  %103 = ptrtoint i32* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 4
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %105, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %96
  %110 = call i32 @bytestream2_get_bytes_left(i32* %13)
  %111 = load i32, i32* %10, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109, %96, %84
  br label %173

114:                                              ; preds = %109
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @bytestream2_get_buffer(i32* %13, i32* %115, i32 %116)
  %118 = load i32, i32* %10, align 4
  %119 = load i32*, i32** %5, align 8
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %5, align 8
  %122 = load i32*, i32** %5, align 8
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @av_memcpy_backptr(i32* %122, i32 %123, i32 %124)
  %126 = load i32, i32* %14, align 4
  %127 = load i32*, i32** %5, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %5, align 8
  br label %172

130:                                              ; preds = %34
  %131 = load i32, i32* %9, align 4
  %132 = icmp sge i32 %131, 252
  %133 = zext i1 %132 to i32
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load i32, i32* %9, align 4
  %138 = and i32 %137, 3
  br label %144

139:                                              ; preds = %130
  %140 = load i32, i32* %9, align 4
  %141 = and i32 %140, 31
  %142 = shl i32 %141, 2
  %143 = add nsw i32 %142, 4
  br label %144

144:                                              ; preds = %139, %136
  %145 = phi i32 [ %138, %136 ], [ %143, %139 ]
  store i32 %145, i32* %10, align 4
  %146 = load i32*, i32** %12, align 8
  %147 = load i32*, i32** %5, align 8
  %148 = ptrtoint i32* %146 to i64
  %149 = ptrtoint i32* %147 to i64
  %150 = sub i64 %148, %149
  %151 = sdiv exact i64 %150, 4
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = icmp slt i64 %151, %153
  br i1 %154, label %159, label %155

155:                                              ; preds = %144
  %156 = call i32 @bytestream2_get_bytes_left(i32* %13)
  %157 = load i32, i32* %10, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155, %144
  br label %173

160:                                              ; preds = %155
  %161 = load i32*, i32** %5, align 8
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @bytestream2_get_buffer(i32* %13, i32* %161, i32 %162)
  %164 = load i32, i32* %10, align 4
  %165 = load i32*, i32** %5, align 8
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  store i32* %167, i32** %5, align 8
  %168 = load i32, i32* %16, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %160
  br label %173

171:                                              ; preds = %160
  br label %172

172:                                              ; preds = %171, %114
  br label %25

173:                                              ; preds = %113, %159, %170, %32
  ret void
}

declare dso_local i32 @bytestream2_init(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @bytestream2_peek_byte(i32*) #1

declare dso_local i32 @bytestream2_get_be16(i32*) #1

declare dso_local i32 @bytestream2_get_buffer(i32*, i32*, i32) #1

declare dso_local i32 @av_memcpy_backptr(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
