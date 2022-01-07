; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_get_char.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_get_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i8* } (i64, i8*, i8*, i8**)* @query_get_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i8* } @query_get_char(i64 %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca %struct.buffer, align 8
  %6 = alloca %struct.buffer, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = bitcast %struct.buffer* %6 to { i64, i8* }*
  %10 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %9, i32 0, i32 0
  store i64 %0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %9, i32 0, i32 1
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  %12 = bitcast %struct.buffer* %6 to { i64, i8* }*
  %13 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %12, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @query_is_eot(i64 %14, i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i8**, i8*** %8, align 8
  %23 = call i32 @query_raise_unexpected_eof(i64 %21, i8** %22)
  %24 = bitcast %struct.buffer* %5 to i8*
  %25 = bitcast %struct.buffer* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 16, i1 false)
  br label %39

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = load i8*, i8** %7, align 8
  store i8 %32, i8* %33, align 1
  %34 = getelementptr inbounds %struct.buffer, %struct.buffer* %6, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = bitcast %struct.buffer* %5 to i8*
  %38 = bitcast %struct.buffer* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  br label %39

39:                                               ; preds = %26, %19
  %40 = bitcast %struct.buffer* %5 to { i64, i8* }*
  %41 = load { i64, i8* }, { i64, i8* }* %40, align 8
  ret { i64, i8* } %41
}

declare dso_local i64 @query_is_eot(i64, i8*) #1

declare dso_local i32 @query_raise_unexpected_eof(i64, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
