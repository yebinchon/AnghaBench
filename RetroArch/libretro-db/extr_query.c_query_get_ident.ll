; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_get_ident.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_get_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i32, i8* } (i32, i8*, i8**, i64*, i8**)* @query_get_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i32, i8* } @query_get_ident(i32 %0, i8* %1, i8** %2, i64* %3, i8** %4) #0 {
  %6 = alloca %struct.buffer, align 8
  %7 = alloca %struct.buffer, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8, align 1
  %12 = bitcast %struct.buffer* %7 to { i32, i8* }*
  %13 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %12, i32 0, i32 0
  store i32 %0, i32* %13, align 8
  %14 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %12, i32 0, i32 1
  store i8* %1, i8** %14, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  store i8** %4, i8*** %10, align 8
  store i8 0, i8* %11, align 1
  %15 = bitcast %struct.buffer* %7 to { i32, i8* }*
  %16 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %15, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i64 @query_is_eot(i32 %17, i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %5
  %23 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i8**, i8*** %10, align 8
  %26 = call i32 @query_raise_unexpected_eof(i32 %24, i8** %25)
  %27 = bitcast %struct.buffer* %6 to i8*
  %28 = bitcast %struct.buffer* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 16, i1 false)
  br label %111

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i8**, i8*** %8, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i64*, i64** %9, align 8
  store i64 0, i64* %37, align 8
  %38 = load i8**, i8*** %10, align 8
  %39 = bitcast %struct.buffer* %7 to { i32, i8* }*
  %40 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %39, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @query_peek_char(i32 %41, i8* %43, i8* %11, i8** %38)
  %45 = load i8**, i8*** %10, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %29
  br label %108

49:                                               ; preds = %29
  %50 = load i8, i8* %11, align 1
  %51 = sext i8 %50 to i32
  %52 = call i64 @isalpha(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = bitcast %struct.buffer* %6 to i8*
  %56 = bitcast %struct.buffer* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 16, i1 false)
  br label %111

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, 1
  %64 = load i64*, i64** %9, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i8**, i8*** %10, align 8
  %66 = bitcast %struct.buffer* %7 to { i32, i8* }*
  %67 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %66, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @query_peek_char(i32 %68, i8* %70, i8* %11, i8** %65)
  br label %72

72:                                               ; preds = %92, %57
  %73 = load i8**, i8*** %10, align 8
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  %76 = xor i1 %75, true
  br i1 %76, label %77, label %107

77:                                               ; preds = %72
  %78 = load i8, i8* %11, align 1
  %79 = sext i8 %78 to i32
  %80 = call i64 @isalpha(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %92, label %82

82:                                               ; preds = %77
  %83 = load i8, i8* %11, align 1
  %84 = sext i8 %83 to i32
  %85 = call i64 @isdigit(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load i8, i8* %11, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 95
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  br label %107

92:                                               ; preds = %87, %82, %77
  %93 = getelementptr inbounds %struct.buffer, %struct.buffer* %7, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  %96 = load i64*, i64** %9, align 8
  %97 = load i64, i64* %96, align 8
  %98 = add i64 %97, 1
  %99 = load i64*, i64** %9, align 8
  store i64 %98, i64* %99, align 8
  %100 = load i8**, i8*** %10, align 8
  %101 = bitcast %struct.buffer* %7 to { i32, i8* }*
  %102 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %101, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @query_peek_char(i32 %103, i8* %105, i8* %11, i8** %100)
  br label %72

107:                                              ; preds = %91, %72
  br label %108

108:                                              ; preds = %107, %48
  %109 = bitcast %struct.buffer* %6 to i8*
  %110 = bitcast %struct.buffer* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %109, i8* align 8 %110, i64 16, i1 false)
  br label %111

111:                                              ; preds = %108, %54, %22
  %112 = bitcast %struct.buffer* %6 to { i32, i8* }*
  %113 = load { i32, i8* }, { i32, i8* }* %112, align 8
  ret { i32, i8* } %113
}

declare dso_local i64 @query_is_eot(i32, i8*) #1

declare dso_local i32 @query_raise_unexpected_eof(i32, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @query_peek_char(i32, i8*, i8*, i8**) #1

declare dso_local i64 @isalpha(i32) #1

declare dso_local i64 @isdigit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
