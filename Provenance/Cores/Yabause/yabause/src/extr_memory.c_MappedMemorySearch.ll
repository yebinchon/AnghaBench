; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_memory.c_MappedMemorySearch.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_memory.c_MappedMemorySearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%08lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @MappedMemorySearch(i32 %0, i32 %1, i32 %2, i8* %3, %struct.TYPE_8__* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store %struct.TYPE_8__* %4, %struct.TYPE_8__** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %22 = load i32*, i32** %13, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = trunc i64 %26 to i32
  %28 = call i64 @malloc(i32 %27)
  %29 = inttoptr i64 %28 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %15, align 8
  %30 = icmp eq %struct.TYPE_8__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %6
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  br label %211

32:                                               ; preds = %6
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, 112
  switch i32 %34, label %60 [
    i32 130, label %35
    i32 132, label %35
    i32 133, label %35
    i32 136, label %51
    i32 129, label %54
    i32 131, label %57
  ]

35:                                               ; preds = %32, %32, %32
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i8*, i8** %11, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @SearchString(i32 %36, i32 %37, i32 %38, i8* %39, %struct.TYPE_8__* %40, i32* %41)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load i32*, i32** %13, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 0, i32* %46, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %48 = call i32 @free(%struct.TYPE_8__* %47)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  br label %211

49:                                               ; preds = %35
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %7, align 8
  br label %211

51:                                               ; preds = %32
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @sscanf(i8* %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64* %17)
  br label %60

54:                                               ; preds = %32
  %55 = load i8*, i8** %11, align 8
  %56 = call i64 @strtoul(i8* %55, i32* null, i32 10)
  store i64 %56, i64* %17, align 8
  store i32 0, i32* %18, align 4
  br label %60

57:                                               ; preds = %32
  %58 = load i8*, i8** %11, align 8
  %59 = call i64 @strtol(i8* %58, i32* null, i32 10)
  store i64 %59, i64* %17, align 8
  store i32 1, i32* %18, align 4
  br label %60

60:                                               ; preds = %32, %57, %54, %51
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %62 = icmp ne %struct.TYPE_8__* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %19, align 4
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  br label %74

72:                                               ; preds = %60
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %19, align 4
  br label %74

74:                                               ; preds = %72, %63
  br label %75

75:                                               ; preds = %209, %74
  store i32 0, i32* %20, align 4
  %76 = load i32, i32* %10, align 4
  %77 = and i32 %76, 3
  switch i32 %77, label %130 [
    i32 139, label %78
    i32 128, label %97
    i32 134, label %116
  ]

78:                                               ; preds = %75
  %79 = load i32, i32* %19, align 4
  %80 = call i32 @MappedMemoryReadByte(i32 %79)
  store i32 %80, i32* %20, align 4
  %81 = load i32, i32* %18, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %20, align 4
  store i32 %84, i32* %20, align 4
  br label %85

85:                                               ; preds = %83, %78
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %19, align 4
  %90 = add nsw i32 %89, 1
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @SearchIncrementAndCheckBounds(%struct.TYPE_8__* %86, i32* %87, i32 %88, i32* %14, i32 %90, i32* %21, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** %7, align 8
  br label %211

96:                                               ; preds = %85
  br label %139

97:                                               ; preds = %75
  %98 = load i32, i32* %19, align 4
  %99 = call i32 @MappedMemoryReadWord(i32 %98)
  store i32 %99, i32* %20, align 4
  %100 = load i32, i32* %18, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %20, align 4
  store i32 %103, i32* %20, align 4
  br label %104

104:                                              ; preds = %102, %97
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %106 = load i32*, i32** %13, align 8
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %19, align 4
  %109 = add nsw i32 %108, 2
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @SearchIncrementAndCheckBounds(%struct.TYPE_8__* %105, i32* %106, i32 %107, i32* %14, i32 %109, i32* %21, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %104
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %114, %struct.TYPE_8__** %7, align 8
  br label %211

115:                                              ; preds = %104
  br label %139

116:                                              ; preds = %75
  %117 = load i32, i32* %19, align 4
  %118 = call i32 @MappedMemoryReadLong(i32 %117)
  store i32 %118, i32* %20, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %19, align 4
  %123 = add nsw i32 %122, 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @SearchIncrementAndCheckBounds(%struct.TYPE_8__* %119, i32* %120, i32 %121, i32* %14, i32 %123, i32* %21, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %116
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %128, %struct.TYPE_8__** %7, align 8
  br label %211

129:                                              ; preds = %116
  br label %139

130:                                              ; preds = %75
  %131 = load i32*, i32** %13, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  store i32 0, i32* %132, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %134 = icmp ne %struct.TYPE_8__* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %137 = call i32 @free(%struct.TYPE_8__* %136)
  br label %138

138:                                              ; preds = %135, %130
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  br label %211

139:                                              ; preds = %129, %115, %96
  %140 = load i32, i32* %10, align 4
  %141 = and i32 %140, 12
  switch i32 %141, label %200 [
    i32 138, label %142
    i32 135, label %154
    i32 137, label %177
  ]

142:                                              ; preds = %139
  %143 = load i32, i32* %20, align 4
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %17, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %142
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %20, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %152 = call i32 @MappedMemoryAddMatch(i32 %148, i32 %149, i32 %150, %struct.TYPE_8__* %151, i32* %16)
  br label %153

153:                                              ; preds = %147, %142
  br label %209

154:                                              ; preds = %139
  %155 = load i32, i32* %18, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %20, align 4
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* %17, align 8
  %161 = icmp ult i64 %159, %160
  br i1 %161, label %170, label %162

162:                                              ; preds = %157, %154
  %163 = load i32, i32* %18, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %162
  %166 = load i32, i32* %20, align 4
  %167 = load i64, i64* %17, align 8
  %168 = trunc i64 %167 to i32
  %169 = icmp slt i32 %166, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %165, %157
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %20, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %175 = call i32 @MappedMemoryAddMatch(i32 %171, i32 %172, i32 %173, %struct.TYPE_8__* %174, i32* %16)
  br label %176

176:                                              ; preds = %170, %165, %162
  br label %209

177:                                              ; preds = %139
  %178 = load i32, i32* %18, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %185, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* %20, align 4
  %182 = sext i32 %181 to i64
  %183 = load i64, i64* %17, align 8
  %184 = icmp ugt i64 %182, %183
  br i1 %184, label %193, label %185

185:                                              ; preds = %180, %177
  %186 = load i32, i32* %18, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %185
  %189 = load i32, i32* %20, align 4
  %190 = load i64, i64* %17, align 8
  %191 = trunc i64 %190 to i32
  %192 = icmp sgt i32 %189, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %188, %180
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* %20, align 4
  %196 = load i32, i32* %10, align 4
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %198 = call i32 @MappedMemoryAddMatch(i32 %194, i32 %195, i32 %196, %struct.TYPE_8__* %197, i32* %16)
  br label %199

199:                                              ; preds = %193, %188, %185
  br label %209

200:                                              ; preds = %139
  %201 = load i32*, i32** %13, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  store i32 0, i32* %202, align 4
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %204 = icmp ne %struct.TYPE_8__* %203, null
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %207 = call i32 @free(%struct.TYPE_8__* %206)
  br label %208

208:                                              ; preds = %205, %200
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %7, align 8
  br label %211

209:                                              ; preds = %199, %176, %153
  %210 = load i32, i32* %21, align 4
  store i32 %210, i32* %19, align 4
  br label %75

211:                                              ; preds = %208, %138, %127, %113, %94, %49, %44, %31
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %212
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @SearchString(i32, i32, i32, i8*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @MappedMemoryReadByte(i32) #1

declare dso_local i32 @SearchIncrementAndCheckBounds(%struct.TYPE_8__*, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @MappedMemoryReadWord(i32) #1

declare dso_local i32 @MappedMemoryReadLong(i32) #1

declare dso_local i32 @MappedMemoryAddMatch(i32, i32, i32, %struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
