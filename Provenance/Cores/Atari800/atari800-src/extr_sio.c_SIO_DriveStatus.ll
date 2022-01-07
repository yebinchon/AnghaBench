; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_SIO_DriveStatus.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_SIO_DriveStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@BINLOAD_start_binloading = common dso_local global i64 0, align 8
@SIO_drive_status = common dso_local global i64* null, align 8
@SIO_OFF = common dso_local global i64 0, align 8
@io_success = common dso_local global i32* null, align 8
@image_type = common dso_local global i64* null, align 8
@IMAGE_TYPE_PRO = common dso_local global i64 0, align 8
@disk = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [46 x i8] c"SIO_DriveStatus: failed to read sector header\00", align 1
@IMAGE_TYPE_VAPI = common dso_local global i64 0, align 8
@SIO_NO_DISK = common dso_local global i64 0, align 8
@additional_info = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Drive Status unit %d %x %x %x %x\00", align 1
@SIO_READ_ONLY = common dso_local global i64 0, align 8
@SIO_format_sectorsize = common dso_local global i32* null, align 8
@SIO_format_sectorcount = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SIO_DriveStatus(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i64, i64* @BINLOAD_start_binloading, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 24, i32* %12, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 255, i32* %14, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 1, i32* %16, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 3
  store i32 0, i32* %18, align 4
  store i32 67, i32* %3, align 4
  br label %202

19:                                               ; preds = %2
  %20 = load i64*, i64** @SIO_drive_status, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SIO_OFF, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %202

28:                                               ; preds = %19
  %29 = load i32*, i32** @io_success, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %28
  %36 = load i64*, i64** @image_type, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IMAGE_TYPE_PRO, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %35
  %44 = load i32*, i32** @io_success, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @SeekSector(i32 %49, i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = load i32**, i32*** @disk, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @fread(i32* %52, i32 1, i32 4, i32* %57)
  %59 = icmp slt i32 %58, 4
  br i1 %59, label %60, label %62

60:                                               ; preds = %43
  %61 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %43
  store i32 67, i32* %3, align 4
  br label %202

63:                                               ; preds = %35, %28
  %64 = load i32*, i32** @io_success, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %135

70:                                               ; preds = %63
  %71 = load i64*, i64** @image_type, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IMAGE_TYPE_VAPI, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %135

78:                                               ; preds = %70
  %79 = load i64*, i64** @SIO_drive_status, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SIO_NO_DISK, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %135

86:                                               ; preds = %78
  %87 = load i64*, i64** @additional_info, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %92, %struct.TYPE_2__** %7, align 8
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %5, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  store i32 %111, i32* %113, align 4
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %5, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 3
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %4, align 4
  %122 = load i32*, i32** %5, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %5, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %5, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %121, i32 %124, i32 %127, i32 %130, i32 %133)
  store i32 67, i32* %3, align 4
  br label %202

135:                                              ; preds = %78, %70, %63
  br label %136

136:                                              ; preds = %135
  %137 = load i32*, i32** %5, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 16, i32* %138, align 4
  %139 = load i32**, i32*** @disk, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = icmp ne i32* %143, null
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 255, i32 127
  %147 = load i32*, i32** %5, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  store i32 %146, i32* %148, align 4
  %149 = load i32*, i32** @io_success, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %136
  %156 = load i32*, i32** %5, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, 4
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %155, %136
  %161 = load i64*, i64** @SIO_drive_status, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @SIO_READ_ONLY, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %160
  %169 = load i32*, i32** %5, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, 8
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %168, %160
  %174 = load i32*, i32** @SIO_format_sectorsize, align 8
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 256
  br i1 %179, label %180, label %185

180:                                              ; preds = %173
  %181 = load i32*, i32** %5, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, 32
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %180, %173
  %186 = load i32*, i32** @SIO_format_sectorcount, align 8
  %187 = load i32, i32* %4, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 1040
  br i1 %191, label %192, label %197

192:                                              ; preds = %185
  %193 = load i32*, i32** %5, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, 128
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %192, %185
  %198 = load i32*, i32** %5, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 2
  store i32 1, i32* %199, align 4
  %200 = load i32*, i32** %5, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 3
  store i32 0, i32* %201, align 4
  store i32 67, i32* %3, align 4
  br label %202

202:                                              ; preds = %197, %86, %62, %27, %10
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @SeekSector(i32, i32) #1

declare dso_local i32 @fread(i32*, i32, i32, i32*) #1

declare dso_local i32 @Log_print(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
