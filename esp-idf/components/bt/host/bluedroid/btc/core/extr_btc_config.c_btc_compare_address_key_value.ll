; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_config.c_btc_compare_address_key_value.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/core/extr_btc_config.c_btc_compare_address_key_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btc_compare_address_key_value(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [100 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  store i32 0, i32* %10, align 4
  %16 = bitcast [100 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 100, i1 false)
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ugt i64 %18, 50
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %38

21:                                               ; preds = %4
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @btc_key_value_to_string(i32* %23, i8* %24, i32 %25)
  %27 = load i32, i32* @config, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %30 = call i32 @config_has_key_in_section(i32 %27, i8* %28, i8* %29)
  store i32 %30, i32* %10, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load i32, i32* @config, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @config_remove_section(i32 %33, i8* %34)
  br label %36

36:                                               ; preds = %32, %21
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %20
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @btc_key_value_to_string(i32*, i8*, i32) #1

declare dso_local i32 @config_has_key_in_section(i32, i8*, i8*) #1

declare dso_local i32 @config_remove_section(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
