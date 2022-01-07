; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_common/extr_mesh_aes_encrypt.c_shift_rows.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/esp_ble_mesh/mesh_common/extr_mesh_aes_encrypt.c_shift_rows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Nb = common dso_local global i32 0, align 4
@Nk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @shift_rows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shift_rows(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @Nb, align 4
  %6 = load i32, i32* @Nk, align 4
  %7 = mul nsw i32 %5, %6
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 %13, i32* %14, align 16
  %15 = load i32*, i32** %2, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 5
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 10
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds i32, i32* %10, i64 2
  store i32 %21, i32* %22, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 15
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds i32, i32* %10, i64 3
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %2, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds i32, i32* %10, i64 4
  store i32 %29, i32* %30, align 16
  %31 = load i32*, i32** %2, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 9
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds i32, i32* %10, i64 5
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %2, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 14
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds i32, i32* %10, i64 6
  store i32 %37, i32* %38, align 8
  %39 = load i32*, i32** %2, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds i32, i32* %10, i64 7
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %2, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 8
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds i32, i32* %10, i64 8
  store i32 %45, i32* %46, align 16
  %47 = load i32*, i32** %2, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 13
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds i32, i32* %10, i64 9
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %2, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds i32, i32* %10, i64 10
  store i32 %53, i32* %54, align 8
  %55 = load i32*, i32** %2, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 7
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds i32, i32* %10, i64 11
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %2, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 12
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds i32, i32* %10, i64 12
  store i32 %61, i32* %62, align 16
  %63 = load i32*, i32** %2, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds i32, i32* %10, i64 13
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** %2, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 6
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds i32, i32* %10, i64 14
  store i32 %69, i32* %70, align 8
  %71 = load i32*, i32** %2, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 11
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds i32, i32* %10, i64 15
  store i32 %73, i32* %74, align 4
  %75 = load i32*, i32** %2, align 8
  %76 = mul nuw i64 4, %8
  %77 = trunc i64 %76 to i32
  %78 = mul nuw i64 4, %8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @_copy(i32* %75, i32 %77, i32* %10, i32 %79)
  %81 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %81)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_copy(i32*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
