; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_hz.h_hz_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_hz.h_hz_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* }

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64*, i8*, i32)* @hz_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hz_mbtowc(%struct.TYPE_4__* %0, i64* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %91, %75, %60, %4
  %18 = load i8*, i8** %8, align 8
  %19 = load i8, i8* %18, align 1
  store i8 %19, i8* %12, align 1
  %20 = load i8, i8* %12, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 126
  br i1 %22, label %23, label %94

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %11, align 4
  %26 = add i32 %25, 2
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %133

29:                                               ; preds = %23
  %30 = load i8*, i8** %8, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  store i8 %32, i8* %12, align 1
  %33 = load i8*, i8** %10, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %77

35:                                               ; preds = %29
  %36 = load i8, i8* %12, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 126
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load i64*, i64** %7, align 8
  store i64 126, i64* %40, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %11, align 4
  %45 = add i32 %44, 2
  store i32 %45, i32* %5, align 4
  br label %145

46:                                               ; preds = %35
  %47 = load i8, i8* %12, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 123
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  store i8* inttoptr (i64 1 to i8*), i8** %10, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  store i8* %52, i8** %8, align 8
  %53 = load i32, i32* %11, align 4
  %54 = add i32 %53, 2
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %11, align 4
  %57 = add i32 %56, 1
  %58 = icmp ult i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %133

60:                                               ; preds = %50
  br label %17

61:                                               ; preds = %46
  %62 = load i8, i8* %12, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 10
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 2
  store i8* %67, i8** %8, align 8
  %68 = load i32, i32* %11, align 4
  %69 = add i32 %68, 2
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add i32 %71, 1
  %73 = icmp ult i32 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %133

75:                                               ; preds = %65
  br label %17

76:                                               ; preds = %61
  br label %93

77:                                               ; preds = %29
  %78 = load i8, i8* %12, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 125
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  store i8* null, i8** %10, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 2
  store i8* %83, i8** %8, align 8
  %84 = load i32, i32* %11, align 4
  %85 = add i32 %84, 2
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %11, align 4
  %88 = add i32 %87, 1
  %89 = icmp ult i32 %86, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %133

91:                                               ; preds = %81
  br label %17

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92, %76
  br label %139

94:                                               ; preds = %17
  br label %95

95:                                               ; preds = %94
  %96 = load i8*, i8** %10, align 8
  %97 = icmp eq i8* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i8, i8* %12, align 1
  %100 = zext i8 %99 to i64
  %101 = load i64*, i64** %7, align 8
  store i64 %100, i64* %101, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* %11, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %145

107:                                              ; preds = %95
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %11, align 4
  %110 = add i32 %109, 2
  %111 = icmp ult i32 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %133

113:                                              ; preds = %107
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %115 = load i64*, i64** %7, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = call i32 @gb2312_mbtowc(%struct.TYPE_4__* %114, i64* %115, i8* %116, i32 2)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* @RET_ILSEQ, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %139

122:                                              ; preds = %113
  %123 = load i32, i32* %13, align 4
  %124 = icmp ne i32 %123, 2
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = call i32 (...) @abort() #3
  unreachable

127:                                              ; preds = %122
  %128 = load i8*, i8** %10, align 8
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* %11, align 4
  %132 = add i32 %131, 2
  store i32 %132, i32* %5, align 4
  br label %145

133:                                              ; preds = %112, %90, %74, %59, %28
  %134 = load i8*, i8** %10, align 8
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* %11, align 4
  %138 = call i32 @RET_TOOFEW(i32 %137)
  store i32 %138, i32* %5, align 4
  br label %145

139:                                              ; preds = %121, %93
  %140 = load i8*, i8** %10, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 8
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @RET_SHIFT_ILSEQ(i32 %143)
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %139, %133, %127, %98, %39
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @gb2312_mbtowc(%struct.TYPE_4__*, i64*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @RET_SHIFT_ILSEQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
