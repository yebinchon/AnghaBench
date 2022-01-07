; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_big5hkscs2001.h_big5hkscs2001_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_big5hkscs2001.h_big5hkscs2001_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8 }

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i8*, i32)* @big5hkscs2001_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @big5hkscs2001_mbtowc(%struct.TYPE_7__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 1
  store i8 %21, i8* %10, align 1
  %22 = load i8, i8* %10, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i8 0, i8* %26, align 1
  %27 = load i8, i8* %10, align 1
  %28 = load i8*, i8** %7, align 8
  store i8 %27, i8* %28, align 1
  store i32 0, i32* %5, align 4
  br label %169

29:                                               ; preds = %4
  %30 = load i8*, i8** %8, align 8
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %11, align 1
  %32 = load i8, i8* %11, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp slt i32 %33, 128
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @ascii_mbtowc(%struct.TYPE_7__* %36, i8* %37, i8* %38, i32 %39)
  store i32 %40, i32* %5, align 4
  br label %169

41:                                               ; preds = %29
  %42 = load i8, i8* %11, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp sge i32 %43, 161
  br i1 %44, label %45, label %98

45:                                               ; preds = %41
  %46 = load i8, i8* %11, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp slt i32 %47, 255
  br i1 %48, label %49, label %98

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 @RET_TOOFEW(i32 0)
  store i32 %53, i32* %5, align 4
  br label %169

54:                                               ; preds = %49
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  %57 = load i8, i8* %56, align 1
  store i8 %57, i8* %12, align 1
  %58 = load i8, i8* %12, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp sge i32 %59, 64
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i8, i8* %12, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp slt i32 %63, 127
  br i1 %64, label %73, label %65

65:                                               ; preds = %61, %54
  %66 = load i8, i8* %12, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp sge i32 %67, 161
  br i1 %68, label %69, label %97

69:                                               ; preds = %65
  %70 = load i8, i8* %12, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp slt i32 %71, 255
  br i1 %72, label %73, label %97

73:                                               ; preds = %69, %61
  %74 = load i8, i8* %11, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %75, 198
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i8, i8* %12, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp sge i32 %79, 161
  br i1 %80, label %96, label %81

81:                                               ; preds = %77, %73
  %82 = load i8, i8* %11, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 199
  br i1 %84, label %96, label %85

85:                                               ; preds = %81
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @big5_mbtowc(%struct.TYPE_7__* %86, i8* %87, i8* %88, i32 2)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @RET_ILSEQ, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %5, align 4
  br label %169

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95, %81, %77
  br label %97

97:                                               ; preds = %96, %69, %65
  br label %98

98:                                               ; preds = %97, %45, %41
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @hkscs1999_mbtowc(%struct.TYPE_7__* %99, i8* %100, i8* %101, i32 %102)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* @RET_ILSEQ, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i32, i32* %14, align 4
  store i32 %108, i32* %5, align 4
  br label %169

109:                                              ; preds = %98
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %111 = load i8*, i8** %7, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @hkscs2001_mbtowc(%struct.TYPE_7__* %110, i8* %111, i8* %112, i32 %113)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* @RET_ILSEQ, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i32, i32* %15, align 4
  store i32 %119, i32* %5, align 4
  br label %169

120:                                              ; preds = %109
  %121 = load i8, i8* %11, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp eq i32 %122, 136
  br i1 %123, label %124, label %167

124:                                              ; preds = %120
  %125 = load i32, i32* %9, align 4
  %126 = icmp slt i32 %125, 2
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = call i32 @RET_TOOFEW(i32 0)
  store i32 %128, i32* %5, align 4
  br label %169

129:                                              ; preds = %124
  %130 = load i8*, i8** %8, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = load i8, i8* %131, align 1
  store i8 %132, i8* %16, align 1
  %133 = load i8, i8* %16, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 98
  br i1 %135, label %148, label %136

136:                                              ; preds = %129
  %137 = load i8, i8* %16, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp eq i32 %138, 100
  br i1 %139, label %148, label %140

140:                                              ; preds = %136
  %141 = load i8, i8* %16, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp eq i32 %142, 163
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = load i8, i8* %16, align 1
  %146 = zext i8 %145 to i32
  %147 = icmp eq i32 %146, 165
  br i1 %147, label %148, label %166

148:                                              ; preds = %144, %140, %136, %129
  %149 = load i8, i8* %16, align 1
  %150 = zext i8 %149 to i32
  %151 = ashr i32 %150, 3
  %152 = shl i32 %151, 2
  %153 = add nsw i32 %152, 154
  %154 = trunc i32 %153 to i8
  store i8 %154, i8* %17, align 1
  %155 = load i8, i8* %16, align 1
  %156 = zext i8 %155 to i32
  %157 = and i32 %156, 6
  %158 = shl i32 %157, 2
  %159 = add nsw i32 %158, 764
  %160 = trunc i32 %159 to i8
  store i8 %160, i8* %18, align 1
  %161 = load i8, i8* %17, align 1
  %162 = load i8*, i8** %7, align 8
  store i8 %161, i8* %162, align 1
  %163 = load i8, i8* %18, align 1
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  store i8 %163, i8* %165, align 1
  store i32 2, i32* %5, align 4
  br label %169

166:                                              ; preds = %144
  br label %167

167:                                              ; preds = %166, %120
  %168 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %167, %148, %127, %118, %107, %93, %52, %35, %24
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i32 @ascii_mbtowc(%struct.TYPE_7__*, i8*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @big5_mbtowc(%struct.TYPE_7__*, i8*, i8*, i32) #1

declare dso_local i32 @hkscs1999_mbtowc(%struct.TYPE_7__*, i8*, i8*, i32) #1

declare dso_local i32 @hkscs2001_mbtowc(%struct.TYPE_7__*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
