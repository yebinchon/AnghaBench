; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_checksum.c_checksum_tcpudp.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/mirai/bot/extr_checksum.c_checksum_tcpudp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iphdr = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @checksum_tcpudp(%struct.iphdr* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.iphdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iphdr* %0, %struct.iphdr** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i64*
  store i64* %15, i64** %9, align 8
  %16 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %17 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %20 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %13, align 4
  br label %23

23:                                               ; preds = %26, %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load i64*, i64** %9, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %12, align 4
  %33 = load i64*, i64** %9, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %9, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 %35, 2
  store i32 %36, i32* %8, align 4
  br label %23

37:                                               ; preds = %23
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %40, %37
  %48 = load i32, i32* %10, align 4
  %49 = ashr i32 %48, 16
  %50 = and i32 %49, 65535
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, 65535
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = ashr i32 %57, 16
  %59 = and i32 %58, 65535
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %62, 65535
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %12, align 4
  %66 = load %struct.iphdr*, %struct.iphdr** %5, align 8
  %67 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @htons(i32 %68)
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %12, align 4
  %74 = load i64, i64* %7, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %83, %47
  %80 = load i32, i32* %12, align 4
  %81 = ashr i32 %80, 16
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i32, i32* %12, align 4
  %85 = and i32 %84, 65535
  %86 = load i32, i32* %12, align 4
  %87 = ashr i32 %86, 16
  %88 = add nsw i32 %85, %87
  store i32 %88, i32* %12, align 4
  br label %79

89:                                               ; preds = %79
  %90 = load i32, i32* %12, align 4
  %91 = xor i32 %90, -1
  %92 = sext i32 %91 to i64
  ret i64 %92
}

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
