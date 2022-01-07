; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_check_txt_collision.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_check_txt_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [6 x i8] c"%s=%s\00", align 1
@HOOK_MALLOC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i64)* @_mdns_check_txt_collision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mdns_check_txt_collision(%struct.TYPE_5__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 1, i64* %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 1
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 -1, i32* %4, align 4
  br label %141

24:                                               ; preds = %18, %3
  %25 = load i64, i64* %7, align 8
  %26 = icmp ugt i64 %25, 1
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %141

33:                                               ; preds = %27, %24
  %34 = load i64, i64* %7, align 8
  %35 = icmp eq i64 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %141

42:                                               ; preds = %36, %33
  br label %43

43:                                               ; preds = %42
  br label %44

44:                                               ; preds = %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %9, align 8
  br label %48

48:                                               ; preds = %51, %44
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %50 = icmp ne %struct.TYPE_4__* %49, null
  br i1 %50, label %51, label %71

51:                                               ; preds = %48
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strlen(i8* %56)
  %58 = add nsw i64 2, %57
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = add nsw i64 %58, %64
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %8, align 8
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %9, align 8
  br label %48

71:                                               ; preds = %48
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp ugt i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 1, i32* %4, align 4
  br label %141

76:                                               ; preds = %71
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 -1, i32* %4, align 4
  br label %141

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %7, align 8
  %84 = call i8* @llvm.stacksave()
  store i8* %84, i8** %10, align 8
  %85 = alloca i32, i64 %83, align 16
  store i64 %83, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  store %struct.TYPE_4__* %88, %struct.TYPE_4__** %9, align 8
  br label %89

89:                                               ; preds = %122, %82
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %91 = icmp ne %struct.TYPE_4__* %90, null
  br i1 %91, label %92, label %126

92:                                               ; preds = %89
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = call i64 @strlen(i8* %95)
  %97 = add nsw i64 2, %96
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = call i64 @strlen(i8* %100)
  %102 = add nsw i64 %97, %101
  %103 = call i64 @malloc(i64 %102)
  %104 = inttoptr i64 %103 to i8*
  store i8* %104, i8** %13, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %120

107:                                              ; preds = %92
  %108 = load i8*, i8** %13, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @sprintf(i8* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %111, i8* %114)
  %116 = load i8*, i8** %13, align 8
  %117 = call i32 @_mdns_append_string(i32* %85, i32* %12, i8* %116)
  %118 = load i8*, i8** %13, align 8
  %119 = call i32 @free(i8* %118)
  br label %122

120:                                              ; preds = %92
  %121 = load i32, i32* @HOOK_MALLOC_FAILED, align 4
  br label %122

122:                                              ; preds = %120, %107
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  store %struct.TYPE_4__* %125, %struct.TYPE_4__** %9, align 8
  br label %89

126:                                              ; preds = %89
  %127 = load i32*, i32** %6, align 8
  %128 = load i64, i64* %7, align 8
  %129 = call i32 @memcmp(i32* %85, i32* %127, i64 %128)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %139

133:                                              ; preds = %126
  %134 = load i32, i32* %14, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i32 1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %139

137:                                              ; preds = %133
  br label %138

138:                                              ; preds = %137
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %139

139:                                              ; preds = %138, %136, %132
  %140 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %140)
  br label %141

141:                                              ; preds = %139, %80, %75, %41, %32, %23
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @_mdns_append_string(i32*, i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcmp(i32*, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
