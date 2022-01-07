; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenchint.c_write_hint_packets.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenchint.c_write_hint_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i32 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"rtpo\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, %struct.TYPE_3__*, i64*)* @write_hint_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_hint_packets(i32* %0, i8* %1, i32 %2, %struct.TYPE_3__* %3, i64* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  store i64* %4, i64** %10, align 8
  store i32 0, i32* %14, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @avio_tell(i32* %20)
  store i64 %21, i64* %12, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @avio_wb16(i32* %22, i32 0)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @avio_wb16(i32* %24, i32 0)
  br label %26

26:                                               ; preds = %147, %49, %5
  %27 = load i32, i32* %8, align 4
  %28 = icmp sgt i32 %27, 4
  br i1 %28, label %29, label %180

29:                                               ; preds = %26
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @AV_RB32(i8* %30)
  store i32 %31, i32* %16, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 4
  store i8* %33, i8** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 4
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %16, align 4
  %41 = icmp sle i32 %40, 12
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %29
  br label %180

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @RTP_PT_IS_RTCP(i8 signext %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load i32, i32* %16, align 4
  %51 = load i8*, i8** %7, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %7, align 8
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %26

57:                                               ; preds = %43
  %58 = load i32, i32* %16, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %63, %57
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  %70 = call i32 @AV_RB16(i8* %69)
  store i32 %70, i32* %17, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 4
  %73 = call i32 @AV_RB32(i8* %72)
  store i32 %73, i32* %18, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %67
  %79 = load i32, i32* %18, align 4
  %80 = sext i32 %79 to i64
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %78, %67
  %84 = load i32, i32* %18, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %85, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %19, align 4
  %91 = load i32, i32* %19, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %83
  %94 = load i32, i32* %19, align 4
  %95 = sext i32 %94 to i64
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %98, %95
  store i64 %99, i64* %97, align 8
  %100 = load i32, i32* %18, align 4
  %101 = sext i32 %100 to i64
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  store i32 0, i32* %19, align 4
  br label %104

104:                                              ; preds = %93, %83
  %105 = load i64*, i64** %10, align 8
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %10, align 8
  store i64 %112, i64* %113, align 8
  br label %114

114:                                              ; preds = %109, %104
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %14, align 4
  %117 = load i32*, i32** %6, align 8
  %118 = call i32 @avio_wb32(i32* %117, i32 0)
  %119 = load i32*, i32** %6, align 8
  %120 = load i8*, i8** %7, align 8
  %121 = call i32 @avio_write(i32* %119, i8* %120, i32 2)
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* %17, align 4
  %124 = call i32 @avio_wb16(i32* %122, i32 %123)
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %19, align 4
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i64
  %129 = select i1 %127, i32 4, i32 0
  %130 = call i32 @avio_wb16(i32* %125, i32 %129)
  %131 = load i32*, i32** %6, align 8
  %132 = call i64 @avio_tell(i32* %131)
  store i64 %132, i64* %13, align 8
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @avio_wb16(i32* %133, i32 0)
  %135 = load i32, i32* %19, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %147

137:                                              ; preds = %114
  %138 = load i32*, i32** %6, align 8
  %139 = call i32 @avio_wb32(i32* %138, i32 16)
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @avio_wb32(i32* %140, i32 12)
  %142 = load i32*, i32** %6, align 8
  %143 = call i32 @avio_write(i32* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %144 = load i32*, i32** %6, align 8
  %145 = load i32, i32* %19, align 4
  %146 = call i32 @avio_wb32(i32* %144, i32 %145)
  br label %147

147:                                              ; preds = %137, %114
  %148 = load i8*, i8** %7, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 12
  store i8* %149, i8** %7, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sub nsw i32 %150, 12
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %16, align 4
  %153 = sub nsw i32 %152, 12
  store i32 %153, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %154 = load i8*, i8** %7, align 8
  %155 = load i32, i32* %16, align 4
  %156 = load i32*, i32** %6, align 8
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 3
  %159 = call i32 @describe_payload(i8* %154, i32 %155, i32* %156, i32* %15, i32* %158)
  %160 = load i32, i32* %16, align 4
  %161 = load i8*, i8** %7, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  store i8* %163, i8** %7, align 8
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* %8, align 4
  %166 = sub nsw i32 %165, %164
  store i32 %166, i32* %8, align 4
  %167 = load i32*, i32** %6, align 8
  %168 = call i64 @avio_tell(i32* %167)
  store i64 %168, i64* %11, align 8
  %169 = load i32*, i32** %6, align 8
  %170 = load i64, i64* %13, align 8
  %171 = load i32, i32* @SEEK_SET, align 4
  %172 = call i32 @avio_seek(i32* %169, i64 %170, i32 %171)
  %173 = load i32*, i32** %6, align 8
  %174 = load i32, i32* %15, align 4
  %175 = call i32 @avio_wb16(i32* %173, i32 %174)
  %176 = load i32*, i32** %6, align 8
  %177 = load i64, i64* %11, align 8
  %178 = load i32, i32* @SEEK_SET, align 4
  %179 = call i32 @avio_seek(i32* %176, i64 %177, i32 %178)
  br label %26

180:                                              ; preds = %42, %26
  %181 = load i32*, i32** %6, align 8
  %182 = call i64 @avio_tell(i32* %181)
  store i64 %182, i64* %11, align 8
  %183 = load i32*, i32** %6, align 8
  %184 = load i64, i64* %12, align 8
  %185 = load i32, i32* @SEEK_SET, align 4
  %186 = call i32 @avio_seek(i32* %183, i64 %184, i32 %185)
  %187 = load i32*, i32** %6, align 8
  %188 = load i32, i32* %14, align 4
  %189 = call i32 @avio_wb16(i32* %187, i32 %188)
  %190 = load i32*, i32** %6, align 8
  %191 = load i64, i64* %11, align 8
  %192 = load i32, i32* @SEEK_SET, align 4
  %193 = call i32 @avio_seek(i32* %190, i64 %191, i32 %192)
  %194 = load i32, i32* %14, align 4
  ret i32 %194
}

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @AV_RB32(i8*) #1

declare dso_local i64 @RTP_PT_IS_RTCP(i8 signext) #1

declare dso_local i32 @AV_RB16(i8*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i8*, i32) #1

declare dso_local i32 @describe_payload(i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @avio_seek(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
