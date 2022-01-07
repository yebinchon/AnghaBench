; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_md5-internal.c_MD5Update.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_md5-internal.c_MD5Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MD5Context = type { i32*, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MD5Update(%struct.MD5Context* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.MD5Context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.MD5Context* %0, %struct.MD5Context** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %10 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = shl i32 %15, 3
  %17 = add nsw i32 %14, %16
  %18 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %19 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %26 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %24, %3
  %32 = load i32, i32* %6, align 4
  %33 = lshr i32 %32, 29
  %34 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %35 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %38, %33
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %7, align 4
  %41 = ashr i32 %40, 3
  %42 = and i32 %41, 63
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %86

45:                                               ; preds = %31
  %46 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %47 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8* %51, i8** %8, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 64, %52
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %45
  %58 = load i8*, i8** %8, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @os_memcpy(i8* %58, i8* %59, i32 %60)
  br label %119

62:                                               ; preds = %45
  %63 = load i8*, i8** %8, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @os_memcpy(i8* %63, i8* %64, i32 %65)
  %67 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %68 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @byteReverse(i8* %69, i32 16)
  %71 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %72 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %75 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = bitcast i8* %76 to i32*
  %78 = call i32 @MD5Transform(i32 %73, i32* %77)
  %79 = load i32, i32* %7, align 4
  %80 = load i8*, i8** %5, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %5, align 8
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %6, align 4
  %85 = sub i32 %84, %83
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %62, %31
  br label %87

87:                                               ; preds = %90, %86
  %88 = load i32, i32* %6, align 4
  %89 = icmp uge i32 %88, 64
  br i1 %89, label %90, label %112

90:                                               ; preds = %87
  %91 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %92 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = call i32 @os_memcpy(i8* %93, i8* %94, i32 64)
  %96 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %97 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @byteReverse(i8* %98, i32 16)
  %100 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %101 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %104 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = bitcast i8* %105 to i32*
  %107 = call i32 @MD5Transform(i32 %102, i32* %106)
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 64
  store i8* %109, i8** %5, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sub i32 %110, 64
  store i32 %111, i32* %6, align 4
  br label %87

112:                                              ; preds = %87
  %113 = load %struct.MD5Context*, %struct.MD5Context** %4, align 8
  %114 = getelementptr inbounds %struct.MD5Context, %struct.MD5Context* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load i8*, i8** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @os_memcpy(i8* %115, i8* %116, i32 %117)
  br label %119

119:                                              ; preds = %112, %57
  ret void
}

declare dso_local i32 @os_memcpy(i8*, i8*, i32) #1

declare dso_local i32 @byteReverse(i8*, i32) #1

declare dso_local i32 @MD5Transform(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
