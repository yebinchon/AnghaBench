; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sgidec.c_read_uncompressed_sgi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sgidec.c_read_uncompressed_sgi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_3__*)* @read_uncompressed_sgi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_uncompressed_sgi(i8* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul i32 %15, %18
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = mul i32 %19, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = mul i32 %24, %27
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 5
  %31 = call i32 @bytestream2_get_bytes_left(i32* %30)
  %32 = icmp ugt i32 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %34, i32* %3, align 4
  br label %146

35:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %56, %35
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = icmp ult i32 %37, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %36
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %47
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %50
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = mul i32 %52, %53
  %55 = call i32 @bytestream2_skip(i32* %51, i32 %54)
  br label %56

56:                                               ; preds = %42
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %36

59:                                               ; preds = %36
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %142, %59
  %65 = load i32, i32* %7, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %145

67:                                               ; preds = %64
  %68 = load i8*, i8** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %68, i64 %74
  store i8* %75, i8** %11, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %110

80:                                               ; preds = %67
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %106, %80
  %85 = load i32, i32* %6, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %84
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %102, %87
  %89 = load i32, i32* %8, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp ult i32 %89, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %96
  %98 = call i32 @bytestream2_get_byteu(i32* %97)
  %99 = trunc i32 %98 to i8
  %100 = load i8*, i8** %11, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %11, align 8
  store i8 %99, i8* %100, align 1
  br label %102

102:                                              ; preds = %94
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %88

105:                                              ; preds = %88
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %6, align 4
  br label %84

109:                                              ; preds = %84
  br label %141

110:                                              ; preds = %67
  %111 = load i8*, i8** %11, align 8
  %112 = bitcast i8* %111 to i32*
  store i32* %112, i32** %12, align 8
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %137, %110
  %117 = load i32, i32* %6, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %140

119:                                              ; preds = %116
  store i32 0, i32* %8, align 4
  br label %120

120:                                              ; preds = %133, %119
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = icmp ult i32 %121, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %120
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %128
  %130 = call i32 @bytestream2_get_ne16u(i32* %129)
  %131 = load i32*, i32** %12, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %12, align 8
  store i32 %130, i32* %131, align 4
  br label %133

133:                                              ; preds = %126
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %120

136:                                              ; preds = %120
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %6, align 4
  br label %116

140:                                              ; preds = %116
  br label %141

141:                                              ; preds = %140, %109
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %7, align 4
  br label %64

145:                                              ; preds = %64
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %145, %33
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @bytestream2_get_byteu(i32*) #1

declare dso_local i32 @bytestream2_get_ne16u(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
