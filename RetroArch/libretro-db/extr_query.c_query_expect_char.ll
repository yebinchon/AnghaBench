; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_expect_char.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_query.c_query_expect_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer = type { i64, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer*, %struct.buffer*, i8, i8**)* @query_expect_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_expect_char(%struct.buffer* noalias sret %0, %struct.buffer* byval(%struct.buffer) align 8 %1, i8 signext %2, i8** %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8**, align 8
  store i8 %2, i8* %5, align 1
  store i8** %3, i8*** %6, align 8
  %7 = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp uge i32 %9, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i8**, i8*** %6, align 8
  %17 = call i32 @query_raise_unexpected_eof(i64 %15, i8** %16)
  br label %46

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* %5, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i8, i8* %5, align 1
  %33 = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = load i8**, i8*** %6, align 8
  %40 = call i32 @query_raise_unexpected_char(i64 %31, i8 signext %32, i8 signext %38, i8** %39)
  br label %45

41:                                               ; preds = %18
  %42 = getelementptr inbounds %struct.buffer, %struct.buffer* %1, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %41, %29
  br label %46

46:                                               ; preds = %45, %13
  %47 = bitcast %struct.buffer* %0 to i8*
  %48 = bitcast %struct.buffer* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 24, i1 false)
  ret void
}

declare dso_local i32 @query_raise_unexpected_eof(i64, i8**) #1

declare dso_local i32 @query_raise_unexpected_char(i64, i8 signext, i8 signext, i8**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
