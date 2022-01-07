; ModuleID = '/home/carl/AnghaBench/dsvpn/src/extr_vpn.c_client_key_exchange.c'
source_filename = "/home/carl/AnghaBench/dsvpn/src/extr_vpn.c_client_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32* }

@TIMEOUT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @client_key_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_key_exchange(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca [12 x i32], align 16
  %5 = alloca [72 x i32], align 16
  %6 = alloca [64 x i32], align 16
  %7 = alloca [32 x i32], align 16
  %8 = alloca [32 x i32], align 16
  %9 = alloca [16 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %11 = bitcast [16 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 64, i1 false)
  %12 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @memcpy(i32* %12, i32* %15, i32 48)
  %17 = getelementptr inbounds [72 x i32], [72 x i32]* %5, i64 0, i64 0
  %18 = call i32 @uc_randombytes_buf(i32* %17, i32 32)
  %19 = call i32 @time(i32* null)
  %20 = call i32 @endian_swap64(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = getelementptr inbounds [72 x i32], [72 x i32]* %5, i64 0, i64 0
  %22 = getelementptr inbounds i32, i32* %21, i64 32
  %23 = call i32 @memcpy(i32* %22, i32* %10, i32 8)
  %24 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 0
  %25 = getelementptr inbounds [72 x i32], [72 x i32]* %5, i64 0, i64 0
  %26 = getelementptr inbounds i32, i32* %25, i64 32
  %27 = getelementptr inbounds i32, i32* %26, i64 8
  %28 = getelementptr inbounds [72 x i32], [72 x i32]* %5, i64 0, i64 0
  %29 = call i32 @uc_hash(i32* %24, i32* %27, i32* %28, i32 40)
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds [72 x i32], [72 x i32]* %5, i64 0, i64 0
  %34 = load i32, i32* @TIMEOUT, align 4
  %35 = call i32 @safe_write(i32 %32, i32* %33, i32 288, i32 %34)
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %36, 288
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %88

39:                                               ; preds = %1
  %40 = load i32, i32* @EACCES, align 4
  store i32 %40, i32* @errno, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %45 = load i32, i32* @TIMEOUT, align 4
  %46 = call i32 @safe_read(i32 %43, i32* %44, i32 256, i32 %45)
  %47 = sext i32 %46 to i64
  %48 = icmp ne i64 %47, 256
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i32 -1, i32* %2, align 4
  br label %88

50:                                               ; preds = %39
  %51 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 0
  %52 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %53 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %54 = call i32 @uc_hash(i32* %51, i32* %52, i32* %53, i32 32)
  %55 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %56 = getelementptr inbounds [64 x i32], [64 x i32]* %6, i64 0, i64 0
  %57 = getelementptr inbounds i32, i32* %56, i64 32
  %58 = call i64 @memcmp(i32* %55, i32* %57, i32 32)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32 -1, i32* %2, align 4
  br label %88

61:                                               ; preds = %50
  %62 = getelementptr inbounds [12 x i32], [12 x i32]* %4, i64 0, i64 0
  %63 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %64 = call i32 @uc_hash(i32* %62, i32* %63, i32* null, i32 0)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  store i32 %67, i32* %68, align 16
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %75 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %76 = call i32 @uc_state_init(i32 %73, i32* %74, i32* %75)
  %77 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %78 = load i32, i32* %77, align 16
  %79 = xor i32 %78, 1
  store i32 %79, i32* %77, align 16
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %87 = call i32 @uc_state_init(i32 %84, i32* %85, i32* %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %61, %60, %49, %38
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @uc_randombytes_buf(i32*, i32) #2

declare dso_local i32 @endian_swap64(i32) #2

declare dso_local i32 @time(i32*) #2

declare dso_local i32 @uc_hash(i32*, i32*, i32*, i32) #2

declare dso_local i32 @safe_write(i32, i32*, i32, i32) #2

declare dso_local i32 @safe_read(i32, i32*, i32, i32) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @uc_state_init(i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
