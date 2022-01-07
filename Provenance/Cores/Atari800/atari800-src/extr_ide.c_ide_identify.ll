; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_identify.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ide.c_ide_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_device = type { i32, i32, i32, i8*, i32, i32, i64, i64, i32* }

@GCBI_FIXED_DRIVE = common dso_local global i32 0, align 4
@PACKAGE_VERSION = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"ATARI800 HARDDISK\00", align 1
@MAX_MULT_SECTORS = common dso_local global i32 0, align 4
@CAP_LBA_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"ATARI800 MICRODRIVE\00", align 1
@GCBI_HAS_PACKET_FEAT_SET = common dso_local global i32 0, align 4
@GCBI_CDROM_DEVICE = common dso_local global i32 0, align 4
@GCBI_HAS_REMOVABLE_MEDIA = common dso_local global i32 0, align 4
@GCBI_50US_TILL_DRQ = common dso_local global i32 0, align 4
@GCBI_12BYTE_PACKETS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"ATARI800 DVD-ROM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ide_device*)* @ide_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_identify(%struct.ide_device* %0) #0 {
  %2 = alloca %struct.ide_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store %struct.ide_device* %0, %struct.ide_device** %2, align 8
  %5 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %6 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %5, i32 0, i32 8
  %7 = load i32*, i32** %6, align 8
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @memset(i32* %8, i32 0, i32 512)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @GCBI_FIXED_DRIVE, align 4
  %12 = call i32 @LE16(i32* %10, i32 0, i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %15 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @LE16(i32* %13, i32 1, i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %20 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @LE16(i32* %18, i32 3, i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %25 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @LE16(i32* %23, i32 6, i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 20
  %30 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %31 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %30, i32 0, i32 3
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @padstr(i32* %29, i8* %32, i32 20)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @LE16(i32* %34, i32 22, i32 4)
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 46
  %38 = load i8*, i8** @PACKAGE_VERSION, align 8
  %39 = call i32 @padstr(i32* %37, i8* %38, i32 8)
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 54
  %42 = call i32 @padstr(i32* %41, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 40)
  %43 = load i32, i32* @MAX_MULT_SECTORS, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %1
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @MAX_MULT_SECTORS, align 4
  %48 = or i32 32768, %47
  %49 = call i32 @LE16(i32* %46, i32 47, i32 %48)
  br label %50

50:                                               ; preds = %45, %1
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @LE16(i32* %51, i32 48, i32 0)
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* @CAP_LBA_SUPPORTED, align 4
  %55 = call i32 @LE16(i32* %53, i32 49, i32 %54)
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @LE16(i32* %56, i32 51, i32 512)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @LE16(i32* %58, i32 53, i32 1)
  %60 = load i32*, i32** %4, align 8
  %61 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %62 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @LE16(i32* %60, i32 54, i32 %63)
  %65 = load i32*, i32** %4, align 8
  %66 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %67 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @LE16(i32* %65, i32 55, i32 %68)
  %70 = load i32*, i32** %4, align 8
  %71 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %72 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @LE16(i32* %70, i32 56, i32 %73)
  %75 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %76 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %79 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = mul nsw i32 %77, %80
  %82 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %83 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %81, %84
  store i32 %85, i32* %3, align 4
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @LE16(i32* %86, i32 57, i32 %87)
  %89 = load i32*, i32** %4, align 8
  %90 = load i32, i32* %3, align 4
  %91 = lshr i32 %90, 16
  %92 = call i32 @LE16(i32* %89, i32 58, i32 %91)
  %93 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %94 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %50
  %98 = load i32*, i32** %4, align 8
  %99 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %100 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = or i32 256, %101
  %103 = call i32 @LE16(i32* %98, i32 59, i32 %102)
  br label %104

104:                                              ; preds = %97, %50
  %105 = load i32*, i32** %4, align 8
  %106 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %107 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @LE16(i32* %105, i32 60, i32 %108)
  %110 = load i32*, i32** %4, align 8
  %111 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %112 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = ashr i32 %113, 16
  %115 = call i32 @LE16(i32* %110, i32 61, i32 %114)
  %116 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %117 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %116, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %133

120:                                              ; preds = %104
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @LE16(i32* %121, i32 0, i32 33930)
  %123 = load i32*, i32** %4, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 54
  %125 = call i32 @padstr(i32* %124, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 40)
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* @CAP_LBA_SUPPORTED, align 4
  %128 = call i32 @LE16(i32* %126, i32 49, i32 %127)
  %129 = load i32*, i32** %4, align 8
  %130 = call i32 @LE16(i32* %129, i32 51, i32 2)
  %131 = load i32*, i32** %4, align 8
  %132 = call i32 @LE16(i32* %131, i32 52, i32 1)
  br label %133

133:                                              ; preds = %120, %104
  %134 = load %struct.ide_device*, %struct.ide_device** %2, align 8
  %135 = getelementptr inbounds %struct.ide_device, %struct.ide_device* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %156

138:                                              ; preds = %133
  %139 = load i32*, i32** %4, align 8
  %140 = load i32, i32* @GCBI_HAS_PACKET_FEAT_SET, align 4
  %141 = load i32, i32* @GCBI_CDROM_DEVICE, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @GCBI_HAS_REMOVABLE_MEDIA, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @GCBI_50US_TILL_DRQ, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @GCBI_12BYTE_PACKETS, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @LE16(i32* %139, i32 0, i32 %148)
  %150 = load i32*, i32** %4, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 54
  %152 = call i32 @padstr(i32* %151, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 40)
  %153 = load i32*, i32** %4, align 8
  %154 = load i32, i32* @CAP_LBA_SUPPORTED, align 4
  %155 = call i32 @LE16(i32* %153, i32 49, i32 %154)
  br label %156

156:                                              ; preds = %138, %133
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @LE16(i32*, i32, i32) #1

declare dso_local i32 @padstr(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
