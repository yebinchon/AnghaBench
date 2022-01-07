; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_addChunk_iTXt.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_addChunk_iTXt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64 }

@.str = private unnamed_addr constant [5 x i8] c"iTXt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i8*, i8*, i8*, i8*, i32*)* @addChunk_iTXt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addChunk_iTXt(%struct.TYPE_7__* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_7__, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_7__, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %21 = load i8*, i8** %14, align 8
  %22 = call i64 @strlen(i8* %21)
  store i64 %22, i64* %19, align 8
  %23 = call i32 @ucvector_init(%struct.TYPE_7__* %17)
  store i64 0, i64* %18, align 8
  br label %24

24:                                               ; preds = %37, %7
  %25 = load i8*, i8** %11, align 8
  %26 = load i64, i64* %18, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load i8*, i8** %11, align 8
  %33 = load i64, i64* %18, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = call i32 @ucvector_push_back(%struct.TYPE_7__* %17, i8 zeroext %35)
  br label %37

37:                                               ; preds = %31
  %38 = load i64, i64* %18, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %18, align 8
  br label %24

40:                                               ; preds = %24
  %41 = load i64, i64* %18, align 8
  %42 = icmp ult i64 %41, 1
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* %18, align 8
  %45 = icmp ugt i64 %44, 79
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %40
  store i32 89, i32* %8, align 4
  br label %154

47:                                               ; preds = %43
  %48 = call i32 @ucvector_push_back(%struct.TYPE_7__* %17, i8 zeroext 0)
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  %53 = trunc i32 %52 to i8
  %54 = call i32 @ucvector_push_back(%struct.TYPE_7__* %17, i8 zeroext %53)
  %55 = call i32 @ucvector_push_back(%struct.TYPE_7__* %17, i8 zeroext 0)
  store i64 0, i64* %18, align 8
  br label %56

56:                                               ; preds = %69, %47
  %57 = load i8*, i8** %12, align 8
  %58 = load i64, i64* %18, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %56
  %64 = load i8*, i8** %12, align 8
  %65 = load i64, i64* %18, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = call i32 @ucvector_push_back(%struct.TYPE_7__* %17, i8 zeroext %67)
  br label %69

69:                                               ; preds = %63
  %70 = load i64, i64* %18, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %18, align 8
  br label %56

72:                                               ; preds = %56
  %73 = call i32 @ucvector_push_back(%struct.TYPE_7__* %17, i8 zeroext 0)
  store i64 0, i64* %18, align 8
  br label %74

74:                                               ; preds = %87, %72
  %75 = load i8*, i8** %13, align 8
  %76 = load i64, i64* %18, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load i8*, i8** %13, align 8
  %83 = load i64, i64* %18, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = call i32 @ucvector_push_back(%struct.TYPE_7__* %17, i8 zeroext %85)
  br label %87

87:                                               ; preds = %81
  %88 = load i64, i64* %18, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %18, align 8
  br label %74

90:                                               ; preds = %74
  %91 = call i32 @ucvector_push_back(%struct.TYPE_7__* %17, i8 zeroext 0)
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %123

94:                                               ; preds = %90
  %95 = call i32 @ucvector_init(%struct.TYPE_7__* %20)
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %98 = load i8*, i8** %14, align 8
  %99 = load i64, i64* %19, align 8
  %100 = load i32*, i32** %15, align 8
  %101 = call i32 @zlib_compress(i8** %96, i64* %97, i8* %98, i64 %99, i32* %100)
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %16, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %121, label %104

104:                                              ; preds = %94
  store i64 0, i64* %18, align 8
  br label %105

105:                                              ; preds = %117, %104
  %106 = load i64, i64* %18, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp ult i64 %106, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i64, i64* %18, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = call i32 @ucvector_push_back(%struct.TYPE_7__* %17, i8 zeroext %115)
  br label %117

117:                                              ; preds = %110
  %118 = load i64, i64* %18, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %18, align 8
  br label %105

120:                                              ; preds = %105
  br label %121

121:                                              ; preds = %120, %94
  %122 = call i32 @ucvector_cleanup(%struct.TYPE_7__* %20)
  br label %141

123:                                              ; preds = %90
  store i64 0, i64* %18, align 8
  br label %124

124:                                              ; preds = %137, %123
  %125 = load i8*, i8** %14, align 8
  %126 = load i64, i64* %18, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %124
  %132 = load i8*, i8** %14, align 8
  %133 = load i64, i64* %18, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = call i32 @ucvector_push_back(%struct.TYPE_7__* %17, i8 zeroext %135)
  br label %137

137:                                              ; preds = %131
  %138 = load i64, i64* %18, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %18, align 8
  br label %124

140:                                              ; preds = %124
  br label %141

141:                                              ; preds = %140, %121
  %142 = load i32, i32* %16, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %141
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @addChunk(%struct.TYPE_7__* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %147, i64 %149)
  store i32 %150, i32* %16, align 4
  br label %151

151:                                              ; preds = %144, %141
  %152 = call i32 @ucvector_cleanup(%struct.TYPE_7__* %17)
  %153 = load i32, i32* %16, align 4
  store i32 %153, i32* %8, align 4
  br label %154

154:                                              ; preds = %151, %46
  %155 = load i32, i32* %8, align 4
  ret i32 %155
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ucvector_init(%struct.TYPE_7__*) #1

declare dso_local i32 @ucvector_push_back(%struct.TYPE_7__*, i8 zeroext) #1

declare dso_local i32 @zlib_compress(i8**, i64*, i8*, i64, i32*) #1

declare dso_local i32 @ucvector_cleanup(%struct.TYPE_7__*) #1

declare dso_local i32 @addChunk(%struct.TYPE_7__*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
