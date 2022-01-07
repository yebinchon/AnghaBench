; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_extract_override.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/helpers/dtoverlay/extr_dtoverlay.c_dtoverlay_extract_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c".;:#?\00", align 1
@DTOVERRIDE_END = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"  override %s: data is truncated or mangled\00", align 1
@FDT_ERR_BADSTRUCTURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"  override %s: string is not NUL-terminated\00", align 1
@FDT_ERR_BADPHANDLE = common dso_local global i32 0, align 4
@DTOVERRIDE_OVERLAY = common dso_local global i32 0, align 4
@DTOVERRIDE_BOOLEAN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"  override %s: boolean target %.*s\00", align 1
@DTOVERRIDE_INTEGER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"  override %s: cell target %.*s @ offset %d (size %d)\00", align 1
@DTOVERRIDE_STRING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"  override %s: string target '%.*s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i8**, i32*, i8**, i32*, i32*, i32*)* @dtoverlay_extract_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtoverlay_extract_override(i8* %0, i32* %1, i8** %2, i32* %3, i8** %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8, align 1
  store i8* %0, i8** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8** %2, i8*** %12, align 8
  store i32* %3, i32** %13, align 8
  store i8** %4, i8*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %28 = load i8**, i8*** %12, align 8
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %18, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %21, align 4
  %32 = load i32, i32* %21, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %8
  %35 = load i32, i32* %21, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %21, align 4
  store i32 %38, i32* %9, align 4
  br label %172

39:                                               ; preds = %34
  %40 = load i32*, i32** %11, align 8
  store i32 0, i32* %40, align 4
  %41 = load i8**, i8*** %14, align 8
  store i8* null, i8** %41, align 8
  %42 = load i32, i32* @DTOVERRIDE_END, align 4
  store i32 %42, i32* %9, align 4
  br label %172

43:                                               ; preds = %8
  %44 = load i32, i32* %21, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %45, 6
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @dtoverlay_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %48)
  %50 = load i32, i32* @FDT_ERR_BADSTRUCTURE, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %172

52:                                               ; preds = %43
  %53 = load i8*, i8** %18, align 8
  %54 = call i32 @dtoverlay_read_u32(i8* %53, i32 0)
  store i32 %54, i32* %24, align 4
  %55 = load i32, i32* %24, align 4
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i8*, i8** %18, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  store i8* %58, i8** %18, align 8
  %59 = load i32, i32* %21, align 4
  %60 = sext i32 %59 to i64
  %61 = sub i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %21, align 4
  %63 = load i8*, i8** %18, align 8
  %64 = load i32, i32* %21, align 4
  %65 = call i8* @memchr(i8* %63, i32 0, i32 %64)
  store i8* %65, i8** %20, align 8
  %66 = load i8*, i8** %20, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %52
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 @dtoverlay_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* @FDT_ERR_BADSTRUCTURE, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  br label %172

73:                                               ; preds = %52
  %74 = load i8*, i8** %18, align 8
  store i8* %74, i8** %19, align 8
  %75 = load i8*, i8** %20, align 8
  %76 = load i8*, i8** %19, align 8
  %77 = ptrtoint i8* %75 to i64
  %78 = ptrtoint i8* %76 to i64
  %79 = sub i64 %77, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %22, align 4
  %81 = load i8*, i8** %18, align 8
  %82 = load i32, i32* %22, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8**, i8*** %12, align 8
  store i8* %85, i8** %86, align 8
  %87 = load i32, i32* %21, align 4
  %88 = load i32, i32* %22, align 4
  %89 = add nsw i32 %88, 1
  %90 = sub nsw i32 %87, %89
  %91 = load i32*, i32** %13, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %24, align 4
  %93 = icmp sle i32 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %73
  %95 = load i32, i32* %24, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @FDT_ERR_BADPHANDLE, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %9, align 4
  br label %172

100:                                              ; preds = %94
  %101 = load i8*, i8** %19, align 8
  %102 = load i8**, i8*** %14, align 8
  store i8* %101, i8** %102, align 8
  %103 = load i32, i32* %22, align 4
  %104 = load i32*, i32** %15, align 8
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @DTOVERRIDE_OVERLAY, align 4
  store i32 %105, i32* %9, align 4
  br label %172

106:                                              ; preds = %73
  %107 = load i8*, i8** %19, align 8
  %108 = load i8*, i8** %25, align 8
  %109 = call i32 @strcspn(i8* %107, i8* %108)
  store i32 %109, i32* %23, align 4
  %110 = load i8*, i8** %19, align 8
  %111 = load i8**, i8*** %14, align 8
  store i8* %110, i8** %111, align 8
  %112 = load i32, i32* %23, align 4
  %113 = load i32*, i32** %15, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* %23, align 4
  %115 = load i32, i32* %22, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %162

117:                                              ; preds = %106
  %118 = load i8*, i8** %19, align 8
  %119 = load i32, i32* %23, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  store i8 %122, i8* %27, align 1
  %123 = load i8, i8* %27, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 63
  br i1 %125, label %126, label %134

126:                                              ; preds = %117
  %127 = load i32*, i32** %16, align 8
  store i32 0, i32* %127, align 4
  %128 = load i32*, i32** %17, align 8
  store i32 0, i32* %128, align 4
  %129 = load i32, i32* @DTOVERRIDE_BOOLEAN, align 4
  store i32 %129, i32* %26, align 4
  %130 = load i8*, i8** %10, align 8
  %131 = load i32, i32* %23, align 4
  %132 = load i8*, i8** %19, align 8
  %133 = call i32 (i8*, i8*, i32, i8*, ...) @dtoverlay_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %130, i32 %131, i8* %132)
  br label %161

134:                                              ; preds = %117
  %135 = load i8*, i8** %19, align 8
  %136 = load i32, i32* %23, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = getelementptr inbounds i8, i8* %138, i64 1
  %140 = call i32 @atoi(i8* %139)
  %141 = load i32*, i32** %16, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i8*, i8** %25, align 8
  %143 = load i8, i8* %27, align 1
  %144 = call i8* @strchr(i8* %142, i8 signext %143)
  %145 = load i8*, i8** %25, align 8
  %146 = ptrtoint i8* %144 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  %149 = trunc i64 %148 to i32
  %150 = shl i32 1, %149
  %151 = load i32*, i32** %17, align 8
  store i32 %150, i32* %151, align 4
  %152 = load i32, i32* @DTOVERRIDE_INTEGER, align 4
  store i32 %152, i32* %26, align 4
  %153 = load i8*, i8** %10, align 8
  %154 = load i32, i32* %23, align 4
  %155 = load i8*, i8** %19, align 8
  %156 = load i32*, i32** %16, align 8
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %17, align 8
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i8*, i8*, i32, i8*, ...) @dtoverlay_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i8* %153, i32 %154, i8* %155, i32 %157, i32 %159)
  br label %161

161:                                              ; preds = %134, %126
  br label %170

162:                                              ; preds = %106
  %163 = load i32*, i32** %16, align 8
  store i32 -1, i32* %163, align 4
  %164 = load i32*, i32** %17, align 8
  store i32 0, i32* %164, align 4
  %165 = load i32, i32* @DTOVERRIDE_STRING, align 4
  store i32 %165, i32* %26, align 4
  %166 = load i8*, i8** %10, align 8
  %167 = load i32, i32* %23, align 4
  %168 = load i8*, i8** %19, align 8
  %169 = call i32 (i8*, i8*, i32, i8*, ...) @dtoverlay_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %166, i32 %167, i8* %168)
  br label %170

170:                                              ; preds = %162, %161
  %171 = load i32, i32* %26, align 4
  store i32 %171, i32* %9, align 4
  br label %172

172:                                              ; preds = %170, %100, %97, %68, %47, %39, %37
  %173 = load i32, i32* %9, align 4
  ret i32 %173
}

declare dso_local i32 @dtoverlay_error(i8*, i8*) #1

declare dso_local i32 @dtoverlay_read_u32(i8*, i32) #1

declare dso_local i8* @memchr(i8*, i32, i32) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

declare dso_local i32 @dtoverlay_debug(i8*, i8*, i32, i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
