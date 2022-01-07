; ModuleID = '/home/carl/AnghaBench/arduino-esp32/cores/esp32/libb64/extr_cdecode.c_base64_decode_block_signed.c'
source_filename = "/home/carl/AnghaBench/arduino-esp32/cores/esp32/libb64/extr_cdecode.c_base64_decode_block_signed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, %struct.TYPE_3__*)* @base64_decode_block_signed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base64_decode_block_signed(i32* %0, i32 %1, i32* %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %13 = load i32*, i32** %6, align 8
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %8, align 8
  store i32* %14, i32** %11, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %11, align 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %180 [
    i32 131, label %24
    i32 130, label %59
    i32 129, label %101
    i32 128, label %143
  ]

22:                                               ; No predecessors!
  br label %23

23:                                               ; preds = %22, %173
  br label %24

24:                                               ; preds = %4, %23
  br label %25

25:                                               ; preds = %51, %24
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = icmp eq i32* %26, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %25
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 131, i32* %34, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = ptrtoint i32* %39 to i64
  %42 = ptrtoint i32* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 4
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %5, align 4
  br label %188

46:                                               ; preds = %25
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %10, align 8
  %49 = load i32, i32* %47, align 4
  %50 = call i32 @base64_decode_value_signed(i32 %49)
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %25, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %12, align 4
  %56 = and i32 %55, 63
  %57 = shl i32 %56, 2
  %58 = load i32*, i32** %11, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %4, %54
  br label %60

60:                                               ; preds = %86, %59
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = icmp eq i32* %61, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %60
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 130, i32* %69, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = ptrtoint i32* %74 to i64
  %77 = ptrtoint i32* %75 to i64
  %78 = sub i64 %76, %77
  %79 = sdiv exact i64 %78, 4
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %5, align 4
  br label %188

81:                                               ; preds = %60
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %10, align 8
  %84 = load i32, i32* %82, align 4
  %85 = call i32 @base64_decode_value_signed(i32 %84)
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %12, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %60, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %12, align 4
  %91 = and i32 %90, 48
  %92 = ashr i32 %91, 4
  %93 = load i32*, i32** %11, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %11, align 8
  %95 = load i32, i32* %93, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %93, align 4
  %97 = load i32, i32* %12, align 4
  %98 = and i32 %97, 15
  %99 = shl i32 %98, 4
  %100 = load i32*, i32** %11, align 8
  store i32 %99, i32* %100, align 4
  br label %101

101:                                              ; preds = %4, %89
  br label %102

102:                                              ; preds = %128, %101
  %103 = load i32*, i32** %10, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = icmp eq i32* %103, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %102
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  store i32 129, i32* %111, align 4
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  %116 = load i32*, i32** %11, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = ptrtoint i32* %116 to i64
  %119 = ptrtoint i32* %117 to i64
  %120 = sub i64 %118, %119
  %121 = sdiv exact i64 %120, 4
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %5, align 4
  br label %188

123:                                              ; preds = %102
  %124 = load i32*, i32** %10, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %10, align 8
  %126 = load i32, i32* %124, align 4
  %127 = call i32 @base64_decode_value_signed(i32 %126)
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %12, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %102, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %12, align 4
  %133 = and i32 %132, 60
  %134 = ashr i32 %133, 2
  %135 = load i32*, i32** %11, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %11, align 8
  %137 = load i32, i32* %135, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %135, align 4
  %139 = load i32, i32* %12, align 4
  %140 = and i32 %139, 3
  %141 = shl i32 %140, 6
  %142 = load i32*, i32** %11, align 8
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %4, %131
  br label %144

144:                                              ; preds = %170, %143
  %145 = load i32*, i32** %10, align 8
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = icmp eq i32* %145, %149
  br i1 %150, label %151, label %165

151:                                              ; preds = %144
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  store i32 128, i32* %153, align 4
  %154 = load i32*, i32** %11, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  %158 = load i32*, i32** %11, align 8
  %159 = load i32*, i32** %8, align 8
  %160 = ptrtoint i32* %158 to i64
  %161 = ptrtoint i32* %159 to i64
  %162 = sub i64 %160, %161
  %163 = sdiv exact i64 %162, 4
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %5, align 4
  br label %188

165:                                              ; preds = %144
  %166 = load i32*, i32** %10, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %10, align 8
  %168 = load i32, i32* %166, align 4
  %169 = call i32 @base64_decode_value_signed(i32 %168)
  store i32 %169, i32* %12, align 4
  br label %170

170:                                              ; preds = %165
  %171 = load i32, i32* %12, align 4
  %172 = icmp slt i32 %171, 0
  br i1 %172, label %144, label %173

173:                                              ; preds = %170
  %174 = load i32, i32* %12, align 4
  %175 = and i32 %174, 63
  %176 = load i32*, i32** %11, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %11, align 8
  %178 = load i32, i32* %176, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %176, align 4
  br label %23

180:                                              ; preds = %4
  %181 = load i32*, i32** %11, align 8
  %182 = load i32*, i32** %8, align 8
  %183 = ptrtoint i32* %181 to i64
  %184 = ptrtoint i32* %182 to i64
  %185 = sub i64 %183, %184
  %186 = sdiv exact i64 %185, 4
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %180, %151, %109, %67, %32
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @base64_decode_value_signed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
