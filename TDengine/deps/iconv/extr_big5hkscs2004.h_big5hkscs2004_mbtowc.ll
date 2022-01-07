; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_big5hkscs2004.h_big5hkscs2004_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_big5hkscs2004.h_big5hkscs2004_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8 }

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i8*, i32)* @big5hkscs2004_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @big5hkscs2004_mbtowc(%struct.TYPE_8__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 1
  store i8 %22, i8* %10, align 1
  %23 = load i8, i8* %10, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i8 0, i8* %27, align 1
  %28 = load i8, i8* %10, align 1
  %29 = load i8*, i8** %7, align 8
  store i8 %28, i8* %29, align 1
  store i32 0, i32* %5, align 4
  br label %181

30:                                               ; preds = %4
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %11, align 1
  %33 = load i8, i8* %11, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp slt i32 %34, 128
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @ascii_mbtowc(%struct.TYPE_8__* %37, i8* %38, i8* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %181

42:                                               ; preds = %30
  %43 = load i8, i8* %11, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp sge i32 %44, 161
  br i1 %45, label %46, label %99

46:                                               ; preds = %42
  %47 = load i8, i8* %11, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp slt i32 %48, 255
  br i1 %49, label %50, label %99

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 2
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = call i32 @RET_TOOFEW(i32 0)
  store i32 %54, i32* %5, align 4
  br label %181

55:                                               ; preds = %50
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %12, align 1
  %59 = load i8, i8* %12, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp sge i32 %60, 64
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i8, i8* %12, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp slt i32 %64, 127
  br i1 %65, label %74, label %66

66:                                               ; preds = %62, %55
  %67 = load i8, i8* %12, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp sge i32 %68, 161
  br i1 %69, label %70, label %98

70:                                               ; preds = %66
  %71 = load i8, i8* %12, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp slt i32 %72, 255
  br i1 %73, label %74, label %98

74:                                               ; preds = %70, %62
  %75 = load i8, i8* %11, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, 198
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i8, i8* %12, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp sge i32 %80, 161
  br i1 %81, label %97, label %82

82:                                               ; preds = %78, %74
  %83 = load i8, i8* %11, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 199
  br i1 %85, label %97, label %86

86:                                               ; preds = %82
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @big5_mbtowc(%struct.TYPE_8__* %87, i8* %88, i8* %89, i32 2)
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @RET_ILSEQ, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %5, align 4
  br label %181

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %82, %78
  br label %98

98:                                               ; preds = %97, %70, %66
  br label %99

99:                                               ; preds = %98, %46, %42
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @hkscs1999_mbtowc(%struct.TYPE_8__* %100, i8* %101, i8* %102, i32 %103)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @RET_ILSEQ, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %99
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %5, align 4
  br label %181

110:                                              ; preds = %99
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @hkscs2001_mbtowc(%struct.TYPE_8__* %111, i8* %112, i8* %113, i32 %114)
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* @RET_ILSEQ, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %110
  %120 = load i32, i32* %15, align 4
  store i32 %120, i32* %5, align 4
  br label %181

121:                                              ; preds = %110
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %123 = load i8*, i8** %7, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @hkscs2004_mbtowc(%struct.TYPE_8__* %122, i8* %123, i8* %124, i32 %125)
  store i32 %126, i32* %16, align 4
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* @RET_ILSEQ, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %121
  %131 = load i32, i32* %16, align 4
  store i32 %131, i32* %5, align 4
  br label %181

132:                                              ; preds = %121
  %133 = load i8, i8* %11, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 136
  br i1 %135, label %136, label %179

136:                                              ; preds = %132
  %137 = load i32, i32* %9, align 4
  %138 = icmp slt i32 %137, 2
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i32 @RET_TOOFEW(i32 0)
  store i32 %140, i32* %5, align 4
  br label %181

141:                                              ; preds = %136
  %142 = load i8*, i8** %8, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 1
  %144 = load i8, i8* %143, align 1
  store i8 %144, i8* %17, align 1
  %145 = load i8, i8* %17, align 1
  %146 = zext i8 %145 to i32
  %147 = icmp eq i32 %146, 98
  br i1 %147, label %160, label %148

148:                                              ; preds = %141
  %149 = load i8, i8* %17, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp eq i32 %150, 100
  br i1 %151, label %160, label %152

152:                                              ; preds = %148
  %153 = load i8, i8* %17, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp eq i32 %154, 163
  br i1 %155, label %160, label %156

156:                                              ; preds = %152
  %157 = load i8, i8* %17, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp eq i32 %158, 165
  br i1 %159, label %160, label %178

160:                                              ; preds = %156, %152, %148, %141
  %161 = load i8, i8* %17, align 1
  %162 = zext i8 %161 to i32
  %163 = ashr i32 %162, 3
  %164 = shl i32 %163, 2
  %165 = add nsw i32 %164, 154
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %18, align 1
  %167 = load i8, i8* %17, align 1
  %168 = zext i8 %167 to i32
  %169 = and i32 %168, 6
  %170 = shl i32 %169, 2
  %171 = add nsw i32 %170, 764
  %172 = trunc i32 %171 to i8
  store i8 %172, i8* %19, align 1
  %173 = load i8, i8* %18, align 1
  %174 = load i8*, i8** %7, align 8
  store i8 %173, i8* %174, align 1
  %175 = load i8, i8* %19, align 1
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  store i8 %175, i8* %177, align 1
  store i32 2, i32* %5, align 4
  br label %181

178:                                              ; preds = %156
  br label %179

179:                                              ; preds = %178, %132
  %180 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %180, i32* %5, align 4
  br label %181

181:                                              ; preds = %179, %160, %139, %130, %119, %108, %94, %53, %36, %25
  %182 = load i32, i32* %5, align 4
  ret i32 %182
}

declare dso_local i32 @ascii_mbtowc(%struct.TYPE_8__*, i8*, i8*, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @big5_mbtowc(%struct.TYPE_8__*, i8*, i8*, i32) #1

declare dso_local i32 @hkscs1999_mbtowc(%struct.TYPE_8__*, i8*, i8*, i32) #1

declare dso_local i32 @hkscs2001_mbtowc(%struct.TYPE_8__*, i8*, i8*, i32) #1

declare dso_local i32 @hkscs2004_mbtowc(%struct.TYPE_8__*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
