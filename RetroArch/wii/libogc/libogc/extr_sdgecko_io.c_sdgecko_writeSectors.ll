; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c_sdgecko_writeSectors.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c_sdgecko_writeSectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DRIVE = common dso_local global i64 0, align 8
@CARDIO_ERROR_NOCARD = common dso_local global i64 0, align 8
@CARDIO_ERROR_INTERNAL = common dso_local global i64 0, align 8
@PAGE_SIZE512 = common dso_local global i64 0, align 8
@_ioPageSize = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sdgecko_writeSectors(i64 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [4 x i32], align 16
  %13 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  store i8* %14, i8** %13, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @MAX_DRIVE, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %4
  %22 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %22, i64* %5, align 8
  br label %163

23:                                               ; preds = %17
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @sdgecko_preIO(i64 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i64, i64* %11, align 8
  store i64 %29, i64* %5, align 8
  br label %163

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i64, i64* @CARDIO_ERROR_INTERNAL, align 8
  store i64 %34, i64* %5, align 8
  br label %163

35:                                               ; preds = %30
  %36 = load i64, i64* @PAGE_SIZE512, align 8
  %37 = load i64*, i64** @_ioPageSize, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %36, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %35
  %43 = load i64, i64* @PAGE_SIZE512, align 8
  %44 = load i64*, i64** @_ioPageSize, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 %43, i64* %46, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64*, i64** @_ioPageSize, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @__card_setblocklen(i64 %47, i64 %51)
  store i64 %52, i64* %11, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i64, i64* %11, align 8
  store i64 %55, i64* %5, align 8
  br label %163

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %35
  %58 = load i32, i32* %8, align 4
  %59 = ashr i32 %58, 24
  %60 = and i32 %59, 255
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %60, i32* %61, align 16
  %62 = load i32, i32* %8, align 4
  %63 = ashr i32 %62, 16
  %64 = and i32 %63, 255
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = ashr i32 %66, 8
  %68 = and i32 %67, 255
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %68, i32* %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %70, 255
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %71, i32* %72, align 4
  %73 = load i64, i64* %6, align 8
  %74 = call i64 @__card_sendappcmd(i64 %73)
  store i64 %74, i64* %11, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %57
  %77 = load i64, i64* %11, align 8
  store i64 %77, i64* %5, align 8
  br label %163

78:                                               ; preds = %57
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %81 = call i64 @__card_sendcmd(i64 %79, i32 23, i32* %80)
  store i64 %81, i64* %11, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i64, i64* %11, align 8
  store i64 %84, i64* %5, align 8
  br label %163

85:                                               ; preds = %78
  %86 = load i64, i64* %6, align 8
  %87 = call i64 @__card_response1(i64 %86)
  store i64 %87, i64* %11, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i64, i64* %11, align 8
  store i64 %90, i64* %5, align 8
  br label %163

91:                                               ; preds = %85
  %92 = load i64, i64* %6, align 8
  %93 = load i32, i32* %7, align 4
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %95 = call i32 @__convert_sector(i64 %92, i32 %93, i32* %94)
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %98 = call i64 @__card_sendcmd(i64 %96, i32 25, i32* %97)
  store i64 %98, i64* %11, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %91
  %101 = load i64, i64* %11, align 8
  store i64 %101, i64* %5, align 8
  br label %163

102:                                              ; preds = %91
  %103 = load i64, i64* %6, align 8
  %104 = call i64 @__card_response1(i64 %103)
  store i64 %104, i64* %11, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i64, i64* %11, align 8
  store i64 %107, i64* %5, align 8
  br label %163

108:                                              ; preds = %102
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %145, %108
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %148

113:                                              ; preds = %109
  %114 = load i64, i64* %6, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = load i64*, i64** @_ioPageSize, align 8
  %117 = load i64, i64* %6, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @__card_multidatawrite(i64 %114, i8* %115, i64 %119)
  store i64 %120, i64* %11, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = load i64, i64* %11, align 8
  store i64 %123, i64* %5, align 8
  br label %163

124:                                              ; preds = %113
  %125 = load i64, i64* %6, align 8
  %126 = call i64 @__card_dataresponse(i64 %125)
  store i64 %126, i64* %11, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %124
  %129 = load i64, i64* %6, align 8
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %131 = call i64 @__card_sendcmd(i64 %129, i32 12, i32* %130)
  store i64 %131, i64* %11, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i64, i64* %11, align 8
  store i64 %134, i64* %5, align 8
  br label %163

135:                                              ; preds = %128
  %136 = load i64, i64* %6, align 8
  %137 = call i64 @__card_stopresponse(i64 %136)
  store i64 %137, i64* %5, align 8
  br label %163

138:                                              ; preds = %124
  %139 = load i64*, i64** @_ioPageSize, align 8
  %140 = load i64, i64* %6, align 8
  %141 = getelementptr inbounds i64, i64* %139, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = load i8*, i8** %13, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 %142
  store i8* %144, i8** %13, align 8
  br label %145

145:                                              ; preds = %138
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %109

148:                                              ; preds = %109
  %149 = load i64, i64* %6, align 8
  %150 = call i64 @__card_multiwritestop(i64 %149)
  store i64 %150, i64* %11, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i64, i64* %11, align 8
  store i64 %153, i64* %5, align 8
  br label %163

154:                                              ; preds = %148
  %155 = load i64, i64* %6, align 8
  %156 = call i64 @__card_sendcmd(i64 %155, i32 13, i32* null)
  store i64 %156, i64* %11, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i64, i64* %11, align 8
  store i64 %159, i64* %5, align 8
  br label %163

160:                                              ; preds = %154
  %161 = load i64, i64* %6, align 8
  %162 = call i64 @__card_response2(i64 %161)
  store i64 %162, i64* %5, align 8
  br label %163

163:                                              ; preds = %160, %158, %152, %135, %133, %122, %106, %100, %89, %83, %76, %54, %33, %28, %21
  %164 = load i64, i64* %5, align 8
  ret i64 %164
}

declare dso_local i64 @sdgecko_preIO(i64) #1

declare dso_local i64 @__card_setblocklen(i64, i64) #1

declare dso_local i64 @__card_sendappcmd(i64) #1

declare dso_local i64 @__card_sendcmd(i64, i32, i32*) #1

declare dso_local i64 @__card_response1(i64) #1

declare dso_local i32 @__convert_sector(i64, i32, i32*) #1

declare dso_local i64 @__card_multidatawrite(i64, i8*, i64) #1

declare dso_local i64 @__card_dataresponse(i64) #1

declare dso_local i64 @__card_stopresponse(i64) #1

declare dso_local i64 @__card_multiwritestop(i64) #1

declare dso_local i64 @__card_response2(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
