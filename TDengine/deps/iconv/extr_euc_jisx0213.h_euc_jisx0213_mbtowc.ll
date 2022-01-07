; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_euc_jisx0213.h_euc_jisx0213_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_euc_jisx0213.h_euc_jisx0213_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@jisx0213_to_ucs_combining = common dso_local global i32** null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i8*, i32)* @euc_jisx0213_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @euc_jisx0213_mbtowc(%struct.TYPE_3__* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %5, align 4
  br label %157

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %11, align 1
  %30 = load i8, i8* %11, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp slt i32 %31, 128
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i8, i8* %11, align 1
  %35 = zext i8 %34 to i32
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  store i32 1, i32* %5, align 4
  br label %157

37:                                               ; preds = %27
  %38 = load i8, i8* %11, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp sge i32 %39, 161
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i8, i8* %11, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp sle i32 %43, 254
  br i1 %44, label %53, label %45

45:                                               ; preds = %41, %37
  %46 = load i8, i8* %11, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 142
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i8, i8* %11, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 143
  br i1 %52, label %53, label %155

53:                                               ; preds = %49, %45, %41
  %54 = load i32, i32* %9, align 4
  %55 = icmp sge i32 %54, 2
  br i1 %55, label %56, label %152

56:                                               ; preds = %53
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  store i8 %59, i8* %12, align 1
  %60 = load i8, i8* %12, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp sge i32 %61, 161
  br i1 %62, label %63, label %151

63:                                               ; preds = %56
  %64 = load i8, i8* %12, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp sle i32 %65, 254
  br i1 %66, label %67, label %151

67:                                               ; preds = %63
  %68 = load i8, i8* %11, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 142
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load i8, i8* %12, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp sle i32 %73, 223
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i8, i8* %12, align 1
  %77 = zext i8 %76 to i32
  %78 = add nsw i32 %77, 65216
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  store i32 2, i32* %5, align 4
  br label %157

80:                                               ; preds = %71
  br label %150

81:                                               ; preds = %67
  %82 = load i8, i8* %11, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 143
  br i1 %84, label %85, label %103

85:                                               ; preds = %81
  %86 = load i32, i32* %9, align 4
  %87 = icmp sge i32 %86, 3
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  %91 = load i8, i8* %90, align 1
  store i8 %91, i8* %14, align 1
  %92 = load i8, i8* %12, align 1
  %93 = zext i8 %92 to i32
  %94 = add nsw i32 384, %93
  %95 = load i8, i8* %14, align 1
  %96 = zext i8 %95 to i32
  %97 = xor i32 %96, 128
  %98 = trunc i32 %97 to i8
  %99 = call i32 @jisx0213_to_ucs4(i32 %94, i8 zeroext %98)
  store i32 %99, i32* %13, align 4
  br label %102

100:                                              ; preds = %85
  %101 = call i32 @RET_TOOFEW(i32 0)
  store i32 %101, i32* %5, align 4
  br label %157

102:                                              ; preds = %88
  br label %112

103:                                              ; preds = %81
  %104 = load i8, i8* %11, align 1
  %105 = zext i8 %104 to i32
  %106 = add nsw i32 128, %105
  %107 = load i8, i8* %12, align 1
  %108 = zext i8 %107 to i32
  %109 = xor i32 %108, 128
  %110 = trunc i32 %109 to i8
  %111 = call i32 @jisx0213_to_ucs4(i32 %106, i8 zeroext %110)
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %103, %102
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %149

115:                                              ; preds = %112
  %116 = load i32, i32* %13, align 4
  %117 = icmp slt i32 %116, 128
  br i1 %117, label %118, label %140

118:                                              ; preds = %115
  %119 = load i32**, i32*** @jisx0213_to_ucs_combining, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %119, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %15, align 4
  %127 = load i32**, i32*** @jisx0213_to_ucs_combining, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %127, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i32*, i32** %7, align 8
  store i32 %135, i32* %136, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  br label %143

140:                                              ; preds = %115
  %141 = load i32, i32* %13, align 4
  %142 = load i32*, i32** %7, align 8
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %118
  %144 = load i8, i8* %11, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %145, 143
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 3, i32 2
  store i32 %148, i32* %5, align 4
  br label %157

149:                                              ; preds = %112
  br label %150

150:                                              ; preds = %149, %80
  br label %151

151:                                              ; preds = %150, %63, %56
  br label %154

152:                                              ; preds = %53
  %153 = call i32 @RET_TOOFEW(i32 0)
  store i32 %153, i32* %5, align 4
  br label %157

154:                                              ; preds = %151
  br label %155

155:                                              ; preds = %154, %49
  %156 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %155, %152, %143, %100, %75, %33, %22
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @jisx0213_to_ucs4(i32, i8 zeroext) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
