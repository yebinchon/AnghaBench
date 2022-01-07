; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_rmsgpack_dom.c_rmsgpack_dom_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_rmsgpack_dom.c_rmsgpack_dom_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmsgpack_dom_value = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.rmsgpack_dom_value* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmsgpack_dom_write(i32* %0, %struct.rmsgpack_dom_value* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.rmsgpack_dom_value*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.rmsgpack_dom_value* %1, %struct.rmsgpack_dom_value** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %10 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %171 [
    i32 130, label %12
    i32 133, label %15
    i32 132, label %22
    i32 128, label %29
    i32 129, label %36
    i32 134, label %49
    i32 131, label %62
    i32 135, label %126
  ]

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @rmsgpack_write_nil(i32* %13)
  store i32 %14, i32* %3, align 4
  br label %173

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %18 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @rmsgpack_write_bool(i32* %16, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %173

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %25 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rmsgpack_write_int(i32* %23, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %173

29:                                               ; preds = %2
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %32 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @rmsgpack_write_uint(i32* %30, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %173

36:                                               ; preds = %2
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %39 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %44 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @rmsgpack_write_string(i32* %37, i32 %42, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %173

49:                                               ; preds = %2
  %50 = load i32*, i32** %4, align 8
  %51 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %52 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %57 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @rmsgpack_write_bin(i32* %50, i32 %55, i32 %60)
  store i32 %61, i32* %3, align 4
  br label %173

62:                                               ; preds = %2
  %63 = load i32*, i32** %4, align 8
  %64 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %65 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @rmsgpack_write_map_header(i32* %63, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %173

73:                                               ; preds = %62
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %122, %73
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %80 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ult i32 %78, %83
  br i1 %84, label %85, label %125

85:                                               ; preds = %77
  %86 = load i32*, i32** %4, align 8
  %87 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %88 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = call i32 @rmsgpack_dom_write(i32* %86, %struct.rmsgpack_dom_value* %95)
  store i32 %96, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %85
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %3, align 4
  br label %173

100:                                              ; preds = %85
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %8, align 4
  %104 = load i32*, i32** %4, align 8
  %105 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %106 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = call i32 @rmsgpack_dom_write(i32* %104, %struct.rmsgpack_dom_value* %113)
  store i32 %114, i32* %7, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %100
  %117 = load i32, i32* %7, align 4
  store i32 %117, i32* %3, align 4
  br label %173

118:                                              ; preds = %100
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %6, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %77

125:                                              ; preds = %77
  br label %171

126:                                              ; preds = %2
  %127 = load i32*, i32** %4, align 8
  %128 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %129 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @rmsgpack_write_array_header(i32* %127, i32 %132)
  store i32 %133, i32* %7, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %3, align 4
  br label %173

137:                                              ; preds = %126
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %141

141:                                              ; preds = %167, %137
  %142 = load i32, i32* %6, align 4
  %143 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %144 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp ult i32 %142, %147
  br i1 %148, label %149, label %170

149:                                              ; preds = %141
  %150 = load i32*, i32** %4, align 8
  %151 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %5, align 8
  %152 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 1
  %155 = load %struct.rmsgpack_dom_value*, %struct.rmsgpack_dom_value** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.rmsgpack_dom_value, %struct.rmsgpack_dom_value* %155, i64 %157
  %159 = call i32 @rmsgpack_dom_write(i32* %150, %struct.rmsgpack_dom_value* %158)
  store i32 %159, i32* %7, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %149
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %3, align 4
  br label %173

163:                                              ; preds = %149
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* %8, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %8, align 4
  br label %167

167:                                              ; preds = %163
  %168 = load i32, i32* %6, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %6, align 4
  br label %141

170:                                              ; preds = %141
  br label %171

171:                                              ; preds = %170, %2, %125
  %172 = load i32, i32* %8, align 4
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %171, %161, %135, %116, %98, %71, %49, %36, %29, %22, %15, %12
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @rmsgpack_write_nil(i32*) #1

declare dso_local i32 @rmsgpack_write_bool(i32*, i32) #1

declare dso_local i32 @rmsgpack_write_int(i32*, i32) #1

declare dso_local i32 @rmsgpack_write_uint(i32*, i32) #1

declare dso_local i32 @rmsgpack_write_string(i32*, i32, i32) #1

declare dso_local i32 @rmsgpack_write_bin(i32*, i32, i32) #1

declare dso_local i32 @rmsgpack_write_map_header(i32*, i32) #1

declare dso_local i32 @rmsgpack_write_array_header(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
