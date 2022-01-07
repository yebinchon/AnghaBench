; ModuleID = '/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_file_content.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/fatfs/test/extr_test_fatfs_common.c_test_file_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @test_file_content to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_file_content(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = bitcast [32 x i8]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 32, i1 false)
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = call i32 @open(i8* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @TEST_ASSERT_NOT_EQUAL(i32 -1, i32 %12)
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %16 = call i32 @read(i32 %14, i8* %15, i32 32)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @TEST_ASSERT_NOT_EQUAL(i32 -1, i32 %17)
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %21 = call i32 @strcmp(i8* %19, i8* %20)
  %22 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @close(i32 %23)
  %25 = call i32 @TEST_ASSERT_EQUAL(i32 0, i32 %24)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @TEST_ASSERT_NOT_EQUAL(i32, i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @TEST_ASSERT_EQUAL(i32, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @close(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
