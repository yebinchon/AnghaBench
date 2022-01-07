; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_bd.c_align_to_next_packet.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_bd.c_align_to_next_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_HOLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @align_to_next_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @align_to_next_packet(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %16 = load i32, i32* @MAX_HOLE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @bd_tell(i32* %20)
  store i32 %21, i32* %10, align 4
  store i32 192, i32* %12, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @memcpy(i32* %19, i32* %22, i32 192)
  %24 = load i32, i32* %10, align 4
  %25 = icmp sge i32 %24, 192
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 %27, 192
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %11, align 4
  br label %31

31:                                               ; preds = %99, %29
  br label %32

32:                                               ; preds = %31
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %19, i64 %35
  %37 = mul nuw i64 4, %17
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = sub i64 %37, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32 @bd_read(i32* %33, i32* %36, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = mul nuw i64 4, %17
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = sub i64 %45, %47
  %49 = icmp eq i64 %44, %48
  br i1 %49, label %50, label %94

50:                                               ; preds = %32
  store i32* %19, i32** %13, align 8
  %51 = mul nuw i64 4, %17
  %52 = sub i64 %51, 1536
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %64, %50
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %14, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i32*, i32** %13, align 8
  %60 = call i64 @have_ts_sync(i32* %59, i32 192)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %67

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63
  %65 = load i32*, i32** %13, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %13, align 8
  br label %54

67:                                               ; preds = %62, %54
  %68 = load i32, i32* %14, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i32*, i32** %13, align 8
  %72 = ptrtoint i32* %71 to i64
  %73 = ptrtoint i32* %19 to i64
  %74 = sub i64 %72, %73
  %75 = sdiv exact i64 %74, 4
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %9, align 4
  br label %100

77:                                               ; preds = %67
  store i32 1536, i32* %12, align 4
  %78 = mul nuw i64 4, %17
  %79 = getelementptr inbounds i32, i32* %19, i64 %78
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = sub i64 0, %81
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @memcpy(i32* %19, i32* %83, i32 %84)
  %86 = mul nuw i64 4, %17
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = sub i64 %86, %88
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = add i64 %91, %89
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %10, align 4
  br label %99

94:                                               ; preds = %32
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %131

98:                                               ; preds = %94
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %131

99:                                               ; preds = %77
  br label %31

100:                                              ; preds = %70
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %101, %102
  %104 = sub nsw i32 %103, 4
  store i32 %104, i32* %12, align 4
  %105 = load i32*, i32** %4, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @bd_seek(i32* %105, i32 %106)
  br label %108

108:                                              ; preds = %124, %100
  %109 = load i32, i32* %12, align 4
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @bd_tell(i32* %110)
  %112 = icmp sgt i32 %109, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %108
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @bd_read(i32* %114, i32* %19, i32 192)
  store i32 %115, i32* %6, align 4
  %116 = load i32, i32* %6, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %131

119:                                              ; preds = %113
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 192
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %131

123:                                              ; preds = %119
  br label %124

124:                                              ; preds = %123
  br label %108

125:                                              ; preds = %108
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %11, align 4
  %128 = sub nsw i32 %126, %127
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %128, %129
  store i32 %130, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %131

131:                                              ; preds = %125, %122, %118, %98, %97
  %132 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bd_tell(i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @bd_read(i32*, i32*, i32) #2

declare dso_local i64 @have_ts_sync(i32*, i32) #2

declare dso_local i32 @bd_seek(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
