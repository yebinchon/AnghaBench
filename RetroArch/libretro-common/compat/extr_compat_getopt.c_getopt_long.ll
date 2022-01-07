; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/compat/extr_compat_getopt.c_getopt_long.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/compat/extr_compat_getopt.c_getopt_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@optind = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getopt_long(i32 %0, i8** %1, i8* %2, %struct.option* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.option*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.option* %3, %struct.option** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  %15 = load i64, i64* @optind, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i64 1, i64* @optind, align 8
  br label %18

18:                                               ; preds = %17, %5
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 -1, i32* %6, align 4
  br label %116

22:                                               ; preds = %18
  %23 = load i8**, i8*** %8, align 8
  %24 = load i64, i64* @optind, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  %26 = call i32 @find_short_index(i8** %25)
  store i32 %26, i32* %12, align 4
  %27 = load i8**, i8*** %8, align 8
  %28 = load i64, i64* @optind, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  %30 = call i32 @find_long_index(i8** %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = load i32, i32* %13, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 -1, i32* %6, align 4
  br label %116

37:                                               ; preds = %33, %22
  %38 = load i32, i32* %12, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %13, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %62

47:                                               ; preds = %44, %40
  %48 = load i8**, i8*** %8, align 8
  %49 = load i64, i64* @optind, align 8
  %50 = getelementptr inbounds i8*, i8** %48, i64 %49
  %51 = load i8**, i8*** %8, align 8
  %52 = load i64, i64* @optind, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = add i64 %52, %54
  %56 = getelementptr inbounds i8*, i8** %51, i64 %55
  %57 = load i8**, i8*** %8, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8*, i8** %57, i64 %59
  %61 = call i32 @shuffle_block(i8** %50, i8** %56, i8** %60)
  store i32 0, i32* %12, align 4
  br label %88

62:                                               ; preds = %44, %37
  %63 = load i32, i32* %13, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %87

65:                                               ; preds = %62
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %87

72:                                               ; preds = %69, %65
  %73 = load i8**, i8*** %8, align 8
  %74 = load i64, i64* @optind, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  %76 = load i8**, i8*** %8, align 8
  %77 = load i64, i64* @optind, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %77, %79
  %81 = getelementptr inbounds i8*, i8** %76, i64 %80
  %82 = load i8**, i8*** %8, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = call i32 @shuffle_block(i8** %75, i8** %81, i8** %85)
  store i32 0, i32* %13, align 4
  br label %87

87:                                               ; preds = %72, %69, %62
  br label %88

88:                                               ; preds = %87, %47
  %89 = load i32, i32* %12, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %13, align 4
  %93 = icmp eq i32 %92, 0
  br label %94

94:                                               ; preds = %91, %88
  %95 = phi i1 [ true, %88 ], [ %93, %91 ]
  %96 = zext i1 %95 to i32
  %97 = call i32 @retro_assert(i32 %96)
  %98 = load i32, i32* %12, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load i8*, i8** %9, align 8
  %102 = load i8**, i8*** %8, align 8
  %103 = load i64, i64* @optind, align 8
  %104 = getelementptr inbounds i8*, i8** %102, i64 %103
  %105 = call i32 @parse_short(i8* %101, i8** %104)
  store i32 %105, i32* %6, align 4
  br label %116

106:                                              ; preds = %94
  %107 = load i32, i32* %13, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load %struct.option*, %struct.option** %10, align 8
  %111 = load i8**, i8*** %8, align 8
  %112 = load i64, i64* @optind, align 8
  %113 = getelementptr inbounds i8*, i8** %111, i64 %112
  %114 = call i32 @parse_long(%struct.option* %110, i8** %113)
  store i32 %114, i32* %6, align 4
  br label %116

115:                                              ; preds = %106
  store i32 63, i32* %6, align 4
  br label %116

116:                                              ; preds = %115, %109, %100, %36, %21
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @find_short_index(i8**) #1

declare dso_local i32 @find_long_index(i8**) #1

declare dso_local i32 @shuffle_block(i8**, i8**, i8**) #1

declare dso_local i32 @retro_assert(i32) #1

declare dso_local i32 @parse_short(i8*, i8**) #1

declare dso_local i32 @parse_long(%struct.option*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
