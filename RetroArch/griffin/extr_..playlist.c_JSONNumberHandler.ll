; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..playlist.c_JSONNumberHandler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..playlist.c_JSONNumberHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i64 }

@JSON_Parser_Continue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64, i32)* @JSONNumberHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @JSONNumberHandler(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @JSON_Parser_GetUserData(i32 %10)
  %12 = inttoptr i64 %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %70

18:                                               ; preds = %4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %70

23:                                               ; preds = %18
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %69

28:                                               ; preds = %23
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load i64, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @string_is_empty(i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @strtoul(i8* %41, i32* null, i32 10)
  %43 = trunc i64 %42 to i32
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  store i32 %43, i32* %46, align 4
  br label %68

47:                                               ; preds = %36, %33, %28
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @string_is_empty(i8* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = load i8*, i8** %6, align 8
  %61 = call i64 @strtoul(i8* %60, i32* null, i32 10)
  %62 = trunc i64 %61 to i32
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  store i32 %62, i32* %65, align 4
  br label %67

66:                                               ; preds = %55, %52, %47
  br label %67

67:                                               ; preds = %66, %59
  br label %68

68:                                               ; preds = %67, %40
  br label %69

69:                                               ; preds = %68, %23
  br label %128

70:                                               ; preds = %18, %4
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %127

75:                                               ; preds = %70
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %126

80:                                               ; preds = %75
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %125

85:                                               ; preds = %80
  %86 = load i64, i64* %7, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %125

88:                                               ; preds = %85
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @string_is_empty(i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %125, label %92

92:                                               ; preds = %88
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 6
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @free(i32* %95)
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 6
  store i32* null, i32** %98, align 8
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %92
  %104 = load i8*, i8** %6, align 8
  %105 = call i64 @strtoul(i8* %104, i32* null, i32 10)
  %106 = trunc i64 %105 to i32
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  store i32 %106, i32* %109, align 4
  br label %124

110:                                              ; preds = %92
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %110
  %116 = load i8*, i8** %6, align 8
  %117 = call i64 @strtoul(i8* %116, i32* null, i32 10)
  %118 = trunc i64 %117 to i32
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  store i32 %118, i32* %121, align 4
  br label %123

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %122, %115
  br label %124

124:                                              ; preds = %123, %103
  br label %125

125:                                              ; preds = %124, %88, %85, %80
  br label %126

126:                                              ; preds = %125, %75
  br label %127

127:                                              ; preds = %126, %70
  br label %128

128:                                              ; preds = %127, %69
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 2
  store i32* null, i32** %130, align 8
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 3
  store i32* null, i32** %132, align 8
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 4
  store i32* null, i32** %134, align 8
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 5
  store i32* null, i32** %136, align 8
  %137 = load i32, i32* @JSON_Parser_Continue, align 4
  ret i32 %137
}

declare dso_local i64 @JSON_Parser_GetUserData(i32) #1

declare dso_local i32 @string_is_empty(i8*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
