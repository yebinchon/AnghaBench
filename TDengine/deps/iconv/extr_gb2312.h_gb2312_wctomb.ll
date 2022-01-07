; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_gb2312.h_gb2312_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_gb2312.h_gb2312_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i16, i16 }

@gb2312_uni2indx_page00 = common dso_local global %struct.TYPE_8__* null, align 8
@gb2312_uni2indx_page20 = common dso_local global %struct.TYPE_8__* null, align 8
@gb2312_uni2indx_page30 = common dso_local global %struct.TYPE_8__* null, align 8
@gb2312_uni2indx_page4e = common dso_local global %struct.TYPE_8__* null, align 8
@gb2312_uni2indx_page9e = common dso_local global %struct.TYPE_8__* null, align 8
@gb2312_uni2indx_pageff = common dso_local global %struct.TYPE_8__* null, align 8
@gb2312_2charset = common dso_local global i16* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @gb2312_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb2312_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp sge i32 %14, 2
  br i1 %15, label %16, label %182

16:                                               ; preds = %4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 1120
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gb2312_uni2indx_page00, align 8
  %24 = load i32, i32* %8, align 4
  %25 = ashr i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i64 %26
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %10, align 8
  br label %98

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %29, 8192
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 9808
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gb2312_uni2indx_page20, align 8
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 4
  %38 = sub nsw i32 %37, 512
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i64 %39
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %10, align 8
  br label %97

41:                                               ; preds = %31, %28
  %42 = load i32, i32* %8, align 4
  %43 = icmp sge i32 %42, 12288
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 12848
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gb2312_uni2indx_page30, align 8
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 4
  %51 = sub nsw i32 %50, 768
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i64 %52
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %10, align 8
  br label %96

54:                                               ; preds = %44, %41
  %55 = load i32, i32* %8, align 4
  %56 = icmp sge i32 %55, 19968
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 40176
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gb2312_uni2indx_page4e, align 8
  %62 = load i32, i32* %8, align 4
  %63 = ashr i32 %62, 4
  %64 = sub nsw i32 %63, 1248
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i64 %65
  store %struct.TYPE_8__* %66, %struct.TYPE_8__** %10, align 8
  br label %95

67:                                               ; preds = %57, %54
  %68 = load i32, i32* %8, align 4
  %69 = icmp sge i32 %68, 40448
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 40880
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gb2312_uni2indx_page9e, align 8
  %75 = load i32, i32* %8, align 4
  %76 = ashr i32 %75, 4
  %77 = sub nsw i32 %76, 2528
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %78
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %10, align 8
  br label %94

80:                                               ; preds = %70, %67
  %81 = load i32, i32* %8, align 4
  %82 = icmp sge i32 %81, 65280
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 65520
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** @gb2312_uni2indx_pageff, align 8
  %88 = load i32, i32* %8, align 4
  %89 = ashr i32 %88, 4
  %90 = sub nsw i32 %89, 4080
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %91
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %10, align 8
  br label %93

93:                                               ; preds = %86, %83, %80
  br label %94

94:                                               ; preds = %93, %73
  br label %95

95:                                               ; preds = %94, %60
  br label %96

96:                                               ; preds = %95, %47
  br label %97

97:                                               ; preds = %96, %34
  br label %98

98:                                               ; preds = %97, %22
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %100 = icmp ne %struct.TYPE_8__* %99, null
  br i1 %100, label %101, label %180

101:                                              ; preds = %98
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i16, i16* %103, align 2
  store i16 %104, i16* %11, align 2
  %105 = load i32, i32* %8, align 4
  %106 = and i32 %105, 15
  store i32 %106, i32* %12, align 4
  %107 = load i16, i16* %11, align 2
  %108 = zext i16 %107 to i32
  %109 = load i32, i32* %12, align 4
  %110 = shl i32 1, %109
  %111 = and i32 %108, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %179

113:                                              ; preds = %101
  %114 = load i32, i32* %12, align 4
  %115 = shl i32 1, %114
  %116 = sub nsw i32 %115, 1
  %117 = load i16, i16* %11, align 2
  %118 = zext i16 %117 to i32
  %119 = and i32 %118, %116
  %120 = trunc i32 %119 to i16
  store i16 %120, i16* %11, align 2
  %121 = load i16, i16* %11, align 2
  %122 = zext i16 %121 to i32
  %123 = and i32 %122, 21845
  %124 = load i16, i16* %11, align 2
  %125 = zext i16 %124 to i32
  %126 = and i32 %125, 43690
  %127 = ashr i32 %126, 1
  %128 = add nsw i32 %123, %127
  %129 = trunc i32 %128 to i16
  store i16 %129, i16* %11, align 2
  %130 = load i16, i16* %11, align 2
  %131 = zext i16 %130 to i32
  %132 = and i32 %131, 13107
  %133 = load i16, i16* %11, align 2
  %134 = zext i16 %133 to i32
  %135 = and i32 %134, 52428
  %136 = ashr i32 %135, 2
  %137 = add nsw i32 %132, %136
  %138 = trunc i32 %137 to i16
  store i16 %138, i16* %11, align 2
  %139 = load i16, i16* %11, align 2
  %140 = zext i16 %139 to i32
  %141 = and i32 %140, 3855
  %142 = load i16, i16* %11, align 2
  %143 = zext i16 %142 to i32
  %144 = and i32 %143, 61680
  %145 = ashr i32 %144, 4
  %146 = add nsw i32 %141, %145
  %147 = trunc i32 %146 to i16
  store i16 %147, i16* %11, align 2
  %148 = load i16, i16* %11, align 2
  %149 = zext i16 %148 to i32
  %150 = and i32 %149, 255
  %151 = load i16, i16* %11, align 2
  %152 = zext i16 %151 to i32
  %153 = ashr i32 %152, 8
  %154 = add nsw i32 %150, %153
  %155 = trunc i32 %154 to i16
  store i16 %155, i16* %11, align 2
  %156 = load i16*, i16** @gb2312_2charset, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 1
  %159 = load i16, i16* %158, align 2
  %160 = zext i16 %159 to i32
  %161 = load i16, i16* %11, align 2
  %162 = zext i16 %161 to i32
  %163 = add nsw i32 %160, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i16, i16* %156, i64 %164
  %166 = load i16, i16* %165, align 2
  store i16 %166, i16* %13, align 2
  %167 = load i16, i16* %13, align 2
  %168 = zext i16 %167 to i32
  %169 = ashr i32 %168, 8
  %170 = trunc i32 %169 to i8
  %171 = load i8*, i8** %7, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  store i8 %170, i8* %172, align 1
  %173 = load i16, i16* %13, align 2
  %174 = zext i16 %173 to i32
  %175 = and i32 %174, 255
  %176 = trunc i32 %175 to i8
  %177 = load i8*, i8** %7, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  store i8 %176, i8* %178, align 1
  store i32 2, i32* %5, align 4
  br label %184

179:                                              ; preds = %101
  br label %180

180:                                              ; preds = %179, %98
  %181 = load i32, i32* @RET_ILUNI, align 4
  store i32 %181, i32* %5, align 4
  br label %184

182:                                              ; preds = %4
  %183 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %182, %180, %113
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
