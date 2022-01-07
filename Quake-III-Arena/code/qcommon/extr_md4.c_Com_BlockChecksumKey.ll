; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_md4.c_Com_BlockChecksumKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_md4.c_Com_BlockChecksumKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Com_BlockChecksumKey(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = call i32 @MD4Init(i32* %9)
  %11 = bitcast i32* %6 to i8*
  %12 = call i32 @MD4Update(i32* %9, i8* %11, i32 4)
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @MD4Update(i32* %9, i8* %13, i32 %14)
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %17 = bitcast i32* %16 to i8*
  %18 = call i32 @MD4Final(i8* %17, i32* %9)
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %20 = load i32, i32* %19, align 16
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = xor i32 %20, %22
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  %25 = load i32, i32* %24, align 8
  %26 = xor i32 %23, %25
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %26, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local i32 @MD4Init(i32*) #1

declare dso_local i32 @MD4Update(i32*, i8*, i32) #1

declare dso_local i32 @MD4Final(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
