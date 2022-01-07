; ModuleID = '/home/carl/AnghaBench/esp-idf/components/sdmmc/extr_sdmmc_io.c_cis_tuple_func_cftable_entry.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/sdmmc/extr_sdmmc_io.c_cis_tuple_func_cftable_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [21 x i8] c"TUPLE: %s, size: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"  INDX: %02X, Intface: %d, Default: %d, Conf-Entry-Num: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"  IF: %02X\0A\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"  FS: %02X, misc: %d, mem_space: %d, irq: %d, io_space: %d, timing: %d, power: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"  IR: %02X, mask: %d, \00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"  IRQ: %02X %02X\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"  LEN: %04X\0A\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @cis_tuple_func_cftable_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cis_tuple_func_cftable_entry(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %7, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %5, align 8
  %26 = load i32, i32* %24, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @CIS_CHECK_SIZE(i32 %33, i32 2)
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %8, align 4
  %37 = call i32 @CIS_CHECK_SIZE(i32 %35, i32 1)
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @BIT(i32 7)
  %42 = and i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @BIT(i32 6)
  %47 = and i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 63
  store i32 %51, i32* %11, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %5, align 8
  %55 = load i32, i32* %53, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 (i32*, i8*, ...) @fprintf(i32* %52, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %3
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %8, align 4
  %65 = call i32 @CIS_CHECK_SIZE(i32 %63, i32 1)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i32 1
  store i32* %68, i32** %5, align 8
  %69 = load i32, i32* %67, align 4
  %70 = call i32 (i32*, i8*, ...) @fprintf(i32* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %62, %3
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %8, align 4
  %74 = call i32 @CIS_CHECK_SIZE(i32 %72, i32 1)
  %75 = load i32*, i32** %5, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @BIT(i32 7)
  %79 = and i32 %77, %78
  store i32 %79, i32* %12, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 5
  %84 = and i32 %83, 3
  store i32 %84, i32* %13, align 4
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @BIT(i32 4)
  %89 = and i32 %87, %88
  store i32 %89, i32* %14, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @BIT(i32 3)
  %94 = and i32 %92, %93
  store i32 %94, i32* %15, align 4
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @BIT(i32 2)
  %99 = and i32 %97, %98
  store i32 %99, i32* %16, align 4
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 3
  store i32 %103, i32* %17, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %5, align 8
  %107 = load i32, i32* %105, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %17, align 4
  %114 = call i32 (i32*, i8*, ...) @fprintf(i32* %104, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113)
  %115 = load i32, i32* %17, align 4
  %116 = icmp eq i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @CIS_CHECK_UNSUPPORTED(i32 %117)
  %119 = load i32, i32* %16, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call i32 @CIS_CHECK_UNSUPPORTED(i32 %122)
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = call i32 @CIS_CHECK_UNSUPPORTED(i32 %127)
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %164

131:                                              ; preds = %71
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %8, align 4
  %134 = call i32 @CIS_CHECK_SIZE(i32 %132, i32 1)
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @BIT(i32 4)
  %139 = and i32 %137, %138
  store i32 %139, i32* %18, align 4
  %140 = load i32*, i32** %6, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %5, align 8
  %143 = load i32, i32* %141, align 4
  %144 = load i32, i32* %18, align 4
  %145 = call i32 (i32*, i8*, ...) @fprintf(i32* %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %143, i32 %144)
  %146 = load i32, i32* %18, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %131
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @CIS_CHECK_SIZE(i32 %149, i32 2)
  %151 = load i32, i32* %8, align 4
  %152 = sub nsw i32 %151, 2
  store i32 %152, i32* %8, align 4
  %153 = load i32*, i32** %6, align 8
  %154 = load i32*, i32** %5, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %5, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32*, i8*, ...) @fprintf(i32* %153, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %156, i32 %159)
  %161 = load i32*, i32** %5, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  store i32* %162, i32** %5, align 8
  br label %163

163:                                              ; preds = %148, %131
  br label %164

164:                                              ; preds = %163, %71
  %165 = load i32, i32* %13, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %183

167:                                              ; preds = %164
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @CIS_CHECK_SIZE(i32 %168, i32 2)
  %170 = load i32, i32* %8, align 4
  %171 = sub nsw i32 %170, 2
  store i32 %171, i32* %8, align 4
  %172 = load i32, i32* %13, align 4
  %173 = icmp eq i32 %172, 1
  %174 = zext i1 %173 to i32
  %175 = call i32 @CIS_CHECK_UNSUPPORTED(i32 %174)
  %176 = load i32*, i32** %5, align 8
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %19, align 4
  %178 = load i32*, i32** %6, align 8
  %179 = load i32, i32* %19, align 4
  %180 = call i32 (i32*, i8*, ...) @fprintf(i32* %178, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %179)
  %181 = load i32*, i32** %5, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  store i32* %182, i32** %5, align 8
  br label %183

183:                                              ; preds = %167, %164
  %184 = load i32, i32* %12, align 4
  %185 = icmp eq i32 %184, 0
  %186 = zext i1 %185 to i32
  %187 = call i32 @CIS_CHECK_UNSUPPORTED(i32 %186)
  %188 = load i32, i32* @ESP_OK, align 4
  ret i32 %188
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @CIS_CHECK_SIZE(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @CIS_CHECK_UNSUPPORTED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
