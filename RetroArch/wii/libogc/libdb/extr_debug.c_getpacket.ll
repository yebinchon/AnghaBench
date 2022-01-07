; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug.c_getpacket.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_debug.c_getpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFMAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @getpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getpacket(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  br label %8

8:                                                ; preds = %114, %1
  br label %9

9:                                                ; preds = %15, %8
  %10 = call i32 (...) @getdbgchar()
  %11 = and i32 %10, 127
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %3, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 36
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %9

16:                                               ; preds = %9
  store i64 0, i64* %7, align 8
  store i8 0, i8* %4, align 1
  store i8 -1, i8* %5, align 1
  br label %17

17:                                               ; preds = %29, %16
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @BUFMAX, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = call i32 (...) @getdbgchar()
  %23 = and i32 %22, 127
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %3, align 1
  %25 = load i8, i8* %3, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 35
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %42

29:                                               ; preds = %21
  %30 = load i8, i8* %3, align 1
  %31 = sext i8 %30 to i32
  %32 = load i8, i8* %4, align 1
  %33 = sext i8 %32 to i32
  %34 = add nsw i32 %33, %31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %4, align 1
  %36 = load i8, i8* %3, align 1
  %37 = load i8*, i8** %2, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8 %36, i8* %39, align 1
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %7, align 8
  br label %17

42:                                               ; preds = %28, %17
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @BUFMAX, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %114

47:                                               ; preds = %42
  %48 = load i8*, i8** %2, align 8
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8 0, i8* %50, align 1
  %51 = load i8, i8* %3, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 35
  br i1 %53, label %54, label %113

54:                                               ; preds = %47
  %55 = call i32 (...) @getdbgchar()
  %56 = and i32 %55, 127
  %57 = call signext i8 @hex(i32 %56)
  %58 = sext i8 %57 to i32
  %59 = shl i32 %58, 4
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %5, align 1
  %61 = call i32 (...) @getdbgchar()
  %62 = and i32 %61, 127
  %63 = call signext i8 @hex(i32 %62)
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* %5, align 1
  %66 = sext i8 %65 to i32
  %67 = or i32 %66, %64
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %5, align 1
  %69 = load i8, i8* %4, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* %5, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %54
  %75 = call i32 @putdbgchar(i8 signext 45)
  br label %112

76:                                               ; preds = %54
  %77 = call i32 @putdbgchar(i8 signext 43)
  %78 = load i8*, i8** %2, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 58
  br i1 %82, label %83, label %111

83:                                               ; preds = %76
  %84 = load i8*, i8** %2, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = call i32 @putdbgchar(i8 signext %86)
  %88 = load i8*, i8** %2, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = call i32 @putdbgchar(i8 signext %90)
  %92 = load i8*, i8** %2, align 8
  %93 = call i64 @strlen(i8* %92)
  store i64 %93, i64* %7, align 8
  store i64 3, i64* %6, align 8
  br label %94

94:                                               ; preds = %107, %83
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* %7, align 8
  %97 = icmp ule i64 %95, %96
  br i1 %97, label %98, label %110

98:                                               ; preds = %94
  %99 = load i8*, i8** %2, align 8
  %100 = load i64, i64* %6, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = load i8*, i8** %2, align 8
  %104 = load i64, i64* %6, align 8
  %105 = sub i64 %104, 3
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  store i8 %102, i8* %106, align 1
  br label %107

107:                                              ; preds = %98
  %108 = load i64, i64* %6, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %6, align 8
  br label %94

110:                                              ; preds = %94
  br label %111

111:                                              ; preds = %110, %76
  br label %112

112:                                              ; preds = %111, %74
  br label %113

113:                                              ; preds = %112, %47
  br label %114

114:                                              ; preds = %113, %46
  %115 = load i8, i8* %4, align 1
  %116 = sext i8 %115 to i32
  %117 = load i8, i8* %5, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %116, %118
  br i1 %119, label %8, label %120

120:                                              ; preds = %114
  ret void
}

declare dso_local i32 @getdbgchar(...) #1

declare dso_local signext i8 @hex(i32) #1

declare dso_local i32 @putdbgchar(i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
