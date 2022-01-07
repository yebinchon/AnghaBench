; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rdt.c_rdt_load_mdpr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rdt.c_rdt_load_mdpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_7__*, i32)* @rdt_load_mdpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdt_load_mdpr(%struct.TYPE_6__* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %89

18:                                               ; preds = %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ffio_init_context(i32* %8, i32 %21, i32 %24, i32 0, i32* null, i32* null, i32* null, i32* null)
  %26 = call i64 @avio_rl32(i32* %8)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i64 @MKTAG(i8 signext 77, i8 signext 76, i8 signext 84, i8 signext 73)
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %65

30:                                               ; preds = %18
  %31 = call i32 @avio_rb16(i32* %8)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %30
  store i32 -1, i32* %4, align 4
  br label %89

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 %40, 2
  %42 = call i32 @avio_skip(i32* %8, i32 %41)
  %43 = call i32 @avio_rb16(i32* %8)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %45, %46
  %48 = mul nsw i32 %47, 2
  %49 = call i32 @avio_skip(i32* %8, i32 %48)
  %50 = call i32 @avio_rb16(i32* %8)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  store i32 -1, i32* %4, align 4
  br label %89

55:                                               ; preds = %39
  br label %56

56:                                               ; preds = %60, %55
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %12, align 4
  %59 = icmp ne i32 %57, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = call i32 @avio_rb32(i32* %8)
  %62 = call i32 @avio_skip(i32* %8, i32 %61)
  br label %56

63:                                               ; preds = %56
  %64 = call i32 @avio_rb32(i32* %8)
  store i32 %64, i32* %9, align 4
  br label %71

65:                                               ; preds = %18
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* @SEEK_SET, align 4
  %70 = call i32 @avio_seek(i32* %8, i32 0, i32 %69)
  br label %71

71:                                               ; preds = %65, %63
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @ff_rm_read_mdpr_codecdata(i32 %74, i32* %8, %struct.TYPE_7__* %75, i32 %83, i32 %84, i32* null)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %71
  store i32 -1, i32* %4, align 4
  br label %89

88:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %87, %54, %38, %17
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @ffio_init_context(i32*, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @avio_rl32(i32*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @avio_rb16(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i64 @ff_rm_read_mdpr_codecdata(i32, i32*, %struct.TYPE_7__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
