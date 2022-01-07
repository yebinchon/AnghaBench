; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_things.c_R_DrawMaskedColumn.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_things.c_R_DrawMaskedColumn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@dc_texturemid = common dso_local global i64 0, align 8
@sprtopscreen = common dso_local global i32 0, align 4
@spryscale = common dso_local global i32 0, align 4
@FRACUNIT = common dso_local global i32 0, align 4
@FRACBITS = common dso_local global i32 0, align 4
@dc_yl = common dso_local global i32 0, align 4
@dc_yh = common dso_local global i32 0, align 4
@mfloorclip = common dso_local global i32* null, align 8
@dc_x = common dso_local global i64 0, align 8
@mceilingclip = common dso_local global i32* null, align 8
@dc_source = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_DrawMaskedColumn(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = load i64, i64* @dc_texturemid, align 8
  store i64 %6, i64* %5, align 8
  br label %7

7:                                                ; preds = %79, %1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 255
  br i1 %11, label %12, label %89

12:                                               ; preds = %7
  %13 = load i32, i32* @sprtopscreen, align 4
  %14 = load i32, i32* @spryscale, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %14, %17
  %19 = add nsw i32 %13, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @spryscale, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = add nsw i32 %20, %25
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @FRACUNIT, align 4
  %29 = add nsw i32 %27, %28
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* @FRACBITS, align 4
  %32 = ashr i32 %30, %31
  store i32 %32, i32* @dc_yl, align 4
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* @FRACBITS, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* @dc_yh, align 4
  %37 = load i32, i32* @dc_yh, align 4
  %38 = load i32*, i32** @mfloorclip, align 8
  %39 = load i64, i64* @dc_x, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %37, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %12
  %44 = load i32*, i32** @mfloorclip, align 8
  %45 = load i64, i64* @dc_x, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* @dc_yh, align 4
  br label %49

49:                                               ; preds = %43, %12
  %50 = load i32, i32* @dc_yl, align 4
  %51 = load i32*, i32** @mceilingclip, align 8
  %52 = load i64, i64* @dc_x, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp sle i32 %50, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32*, i32** @mceilingclip, align 8
  %58 = load i64, i64* @dc_x, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @dc_yl, align 4
  br label %62

62:                                               ; preds = %56, %49
  %63 = load i32, i32* @dc_yl, align 4
  %64 = load i32, i32* @dc_yh, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = bitcast %struct.TYPE_3__* %67 to i32*
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  store i32* %69, i32** @dc_source, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @FRACBITS, align 4
  %75 = shl i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %70, %76
  store i64 %77, i64* @dc_texturemid, align 8
  %78 = call i32 (...) @colfunc()
  br label %79

79:                                               ; preds = %66, %62
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %81 = bitcast %struct.TYPE_3__* %80 to i32*
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  %88 = bitcast i32* %87 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %88, %struct.TYPE_3__** %2, align 8
  br label %7

89:                                               ; preds = %7
  %90 = load i64, i64* %5, align 8
  store i64 %90, i64* @dc_texturemid, align 8
  ret void
}

declare dso_local i32 @colfunc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
