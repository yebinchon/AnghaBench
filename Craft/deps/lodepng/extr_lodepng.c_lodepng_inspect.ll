; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_inspect.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_lodepng_inspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, %struct.TYPE_11__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i8, i8, i8, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lodepng_inspect(i32* %0, i32* %1, %struct.TYPE_10__* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %11, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18, %5
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @CERROR_RETURN_ERROR(i32 %24, i32 48)
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i64, i64* %10, align 8
  %28 = icmp ult i64 %27, 29
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @CERROR_RETURN_ERROR(i32 %32, i32 27)
  br label %34

34:                                               ; preds = %29, %26
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %36 = call i32 @lodepng_info_cleanup(%struct.TYPE_11__* %35)
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %38 = call i32 @lodepng_info_init(%struct.TYPE_11__* %37)
  %39 = load i8*, i8** %9, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %42, 137
  br i1 %43, label %86, label %44

44:                                               ; preds = %34
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp ne i32 %48, 80
  br i1 %49, label %86, label %50

50:                                               ; preds = %44
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp ne i32 %54, 78
  br i1 %55, label %86, label %56

56:                                               ; preds = %50
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 3
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp ne i32 %60, 71
  br i1 %61, label %86, label %62

62:                                               ; preds = %56
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 4
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp ne i32 %66, 13
  br i1 %67, label %86, label %68

68:                                               ; preds = %62
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 5
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp ne i32 %72, 10
  br i1 %73, label %86, label %74

74:                                               ; preds = %68
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 6
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp ne i32 %78, 26
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 7
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp ne i32 %84, 10
  br i1 %85, label %86, label %91

86:                                               ; preds = %80, %74, %68, %62, %56, %50, %44, %34
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @CERROR_RETURN_ERROR(i32 %89, i32 28)
  br label %91

91:                                               ; preds = %86, %80
  %92 = load i8*, i8** %9, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 12
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp ne i32 %95, 73
  br i1 %96, label %115, label %97

97:                                               ; preds = %91
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 13
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp ne i32 %101, 72
  br i1 %102, label %115, label %103

103:                                              ; preds = %97
  %104 = load i8*, i8** %9, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 14
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp ne i32 %107, 68
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 15
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp ne i32 %113, 82
  br i1 %114, label %115, label %120

115:                                              ; preds = %109, %103, %97, %91
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @CERROR_RETURN_ERROR(i32 %118, i32 29)
  br label %120

120:                                              ; preds = %115, %109
  %121 = load i8*, i8** %9, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 16
  %123 = call i32 @lodepng_read32bitInt(i8* %122)
  %124 = load i32*, i32** %6, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 20
  %127 = call i32 @lodepng_read32bitInt(i8* %126)
  %128 = load i32*, i32** %7, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i8*, i8** %9, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 24
  %131 = load i8, i8* %130, align 1
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  store i8 %131, i8* %134, align 8
  %135 = load i8*, i8** %9, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 25
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i64
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  store i64 %138, i64* %141, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 26
  %144 = load i8, i8* %143, align 1
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  store i8 %144, i8* %146, align 8
  %147 = load i8*, i8** %9, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 27
  %149 = load i8, i8* %148, align 1
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  store i8 %149, i8* %151, align 1
  %152 = load i8*, i8** %9, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 28
  %154 = load i8, i8* %153, align 1
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 2
  store i8 %154, i8* %156, align 2
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %178, label %162

162:                                              ; preds = %120
  %163 = load i8*, i8** %9, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 29
  %165 = call i32 @lodepng_read32bitInt(i8* %164)
  store i32 %165, i32* %12, align 4
  %166 = load i8*, i8** %9, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 12
  %168 = call i32 @lodepng_crc32(i8* %167, i32 17)
  store i32 %168, i32* %13, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* %13, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %162
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @CERROR_RETURN_ERROR(i32 %175, i32 57)
  br label %177

177:                                              ; preds = %172, %162
  br label %178

178:                                              ; preds = %177, %120
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i8, i8* %180, align 8
  %182 = zext i8 %181 to i32
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %178
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @CERROR_RETURN_ERROR(i32 %187, i32 32)
  br label %189

189:                                              ; preds = %184, %178
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %189
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @CERROR_RETURN_ERROR(i32 %198, i32 33)
  br label %200

200:                                              ; preds = %195, %189
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 2
  %203 = load i8, i8* %202, align 2
  %204 = zext i8 %203 to i32
  %205 = icmp sgt i32 %204, 1
  br i1 %205, label %206, label %211

206:                                              ; preds = %200
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @CERROR_RETURN_ERROR(i32 %209, i32 34)
  br label %211

211:                                              ; preds = %206, %200
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 0
  %219 = load i8, i8* %218, align 8
  %220 = call i32 @checkColorValidity(i64 %215, i8 zeroext %219)
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  ret i32 %225
}

declare dso_local i32 @CERROR_RETURN_ERROR(i32, i32) #1

declare dso_local i32 @lodepng_info_cleanup(%struct.TYPE_11__*) #1

declare dso_local i32 @lodepng_info_init(%struct.TYPE_11__*) #1

declare dso_local i32 @lodepng_read32bitInt(i8*) #1

declare dso_local i32 @lodepng_crc32(i8*, i32) #1

declare dso_local i32 @checkColorValidity(i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
