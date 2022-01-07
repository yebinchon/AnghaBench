; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_alloc_shortoptions.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_alloc_shortoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arg_hdr = type { i32, i8* }

@ARG_TERMINATOR = common dso_local global i32 0, align 4
@ARG_HASVALUE = common dso_local global i32 0, align 4
@ARG_HASOPTVALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.arg_hdr**)* @alloc_shortoptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alloc_shortoptions(%struct.arg_hdr** %0) #0 {
  %2 = alloca %struct.arg_hdr**, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arg_hdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.arg_hdr*, align 8
  %9 = alloca i8*, align 8
  store %struct.arg_hdr** %0, %struct.arg_hdr*** %2, align 8
  store i64 2, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %44, %1
  %11 = load %struct.arg_hdr**, %struct.arg_hdr*** %2, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %11, i64 %13
  %15 = load %struct.arg_hdr*, %struct.arg_hdr** %14, align 8
  %16 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ARG_TERMINATOR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %47

22:                                               ; preds = %10
  %23 = load %struct.arg_hdr**, %struct.arg_hdr*** %2, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %23, i64 %25
  %27 = load %struct.arg_hdr*, %struct.arg_hdr** %26, align 8
  store %struct.arg_hdr* %27, %struct.arg_hdr** %6, align 8
  %28 = load %struct.arg_hdr*, %struct.arg_hdr** %6, align 8
  %29 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.arg_hdr*, %struct.arg_hdr** %6, align 8
  %34 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strlen(i8* %35)
  br label %38

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37, %32
  %39 = phi i32 [ %36, %32 ], [ 0, %37 ]
  %40 = mul nsw i32 3, %39
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %4, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %4, align 8
  br label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %10

47:                                               ; preds = %10
  %48 = load i64, i64* %4, align 8
  %49 = call i8* @malloc(i64 %48)
  store i8* %49, i8** %3, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %119

52:                                               ; preds = %47
  %53 = load i8*, i8** %3, align 8
  store i8* %53, i8** %7, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %7, align 8
  store i8 58, i8* %54, align 1
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %114, %52
  %57 = load %struct.arg_hdr**, %struct.arg_hdr*** %2, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %57, i64 %59
  %61 = load %struct.arg_hdr*, %struct.arg_hdr** %60, align 8
  %62 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ARG_TERMINATOR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br i1 %67, label %68, label %117

68:                                               ; preds = %56
  %69 = load %struct.arg_hdr**, %struct.arg_hdr*** %2, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.arg_hdr*, %struct.arg_hdr** %69, i64 %71
  %73 = load %struct.arg_hdr*, %struct.arg_hdr** %72, align 8
  store %struct.arg_hdr* %73, %struct.arg_hdr** %8, align 8
  %74 = load %struct.arg_hdr*, %struct.arg_hdr** %8, align 8
  %75 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %9, align 8
  br label %77

77:                                               ; preds = %112, %68
  %78 = load i8*, i8** %9, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i8*, i8** %9, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br label %85

85:                                               ; preds = %80, %77
  %86 = phi i1 [ false, %77 ], [ %84, %80 ]
  br i1 %86, label %87, label %113

87:                                               ; preds = %85
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %9, align 8
  %90 = load i8, i8* %88, align 1
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %7, align 8
  store i8 %90, i8* %91, align 1
  %93 = load %struct.arg_hdr*, %struct.arg_hdr** %8, align 8
  %94 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ARG_HASVALUE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %87
  %100 = load i8*, i8** %7, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %7, align 8
  store i8 58, i8* %100, align 1
  br label %102

102:                                              ; preds = %99, %87
  %103 = load %struct.arg_hdr*, %struct.arg_hdr** %8, align 8
  %104 = getelementptr inbounds %struct.arg_hdr, %struct.arg_hdr* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @ARG_HASOPTVALUE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %7, align 8
  store i8 58, i8* %110, align 1
  br label %112

112:                                              ; preds = %109, %102
  br label %77

113:                                              ; preds = %85
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %56

117:                                              ; preds = %56
  %118 = load i8*, i8** %7, align 8
  store i8 0, i8* %118, align 1
  br label %119

119:                                              ; preds = %117, %47
  %120 = load i8*, i8** %3, align 8
  ret i8* %120
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
