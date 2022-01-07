; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_seek.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_card.c___card_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_9__* }
%struct.card_direntry = type { i32*, i64, i64 }
%struct.card_dat = type { %struct.card_direntry* }
%struct.card_bat = type { i64* }

@CARD_MAXFILES = common dso_local global i64 0, align 8
@CARD_ERROR_FATAL_ERROR = common dso_local global i64 0, align 8
@CARD_SYSAREA = common dso_local global i64 0, align 8
@CARD_ERROR_LIMIT = common dso_local global i64 0, align 8
@CARD_ERROR_BROKEN = common dso_local global i64 0, align 8
@CARD_ERROR_READY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i64, i64, %struct.TYPE_10__**)* @__card_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_seek(%struct.TYPE_9__* %0, i64 %1, i64 %2, %struct.TYPE_10__** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.card_direntry*, align 8
  %15 = alloca %struct.card_dat*, align 8
  %16 = alloca %struct.card_bat*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_10__** %3, %struct.TYPE_10__*** %9, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %13, align 8
  store %struct.card_direntry* null, %struct.card_direntry** %14, align 8
  store %struct.card_dat* null, %struct.card_dat** %15, align 8
  store %struct.card_bat* null, %struct.card_bat** %16, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CARD_MAXFILES, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %4
  %28 = load i64, i64* @CARD_ERROR_FATAL_ERROR, align 8
  store i64 %28, i64* %5, align 8
  br label %208

29:                                               ; preds = %21
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @__card_getcntrlblock(i32 %32, %struct.TYPE_10__** %13)
  store i64 %33, i64* %10, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* %10, align 8
  store i64 %36, i64* %5, align 8
  br label %208

37:                                               ; preds = %29
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CARD_SYSAREA, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %46, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %43, %37
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %53 = load i64, i64* @CARD_ERROR_FATAL_ERROR, align 8
  %54 = call i32 @__card_putcntrlblock(%struct.TYPE_10__* %52, i64 %53)
  %55 = load i64, i64* @CARD_ERROR_FATAL_ERROR, align 8
  store i64 %55, i64* %5, align 8
  br label %208

56:                                               ; preds = %43
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %58 = call %struct.card_dat* @__card_getdirblock(%struct.TYPE_10__* %57)
  store %struct.card_dat* %58, %struct.card_dat** %15, align 8
  %59 = load %struct.card_dat*, %struct.card_dat** %15, align 8
  %60 = getelementptr inbounds %struct.card_dat, %struct.card_dat* %59, i32 0, i32 0
  %61 = load %struct.card_direntry*, %struct.card_direntry** %60, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %61, i64 %64
  store %struct.card_direntry* %65, %struct.card_direntry** %14, align 8
  %66 = load %struct.card_direntry*, %struct.card_direntry** %14, align 8
  %67 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 255
  br i1 %71, label %72, label %206

72:                                               ; preds = %56
  %73 = load %struct.card_direntry*, %struct.card_direntry** %14, align 8
  %74 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = mul nsw i64 %75, %78
  store i64 %79, i64* %12, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %8, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %72
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %7, align 8
  %87 = add nsw i64 %85, %86
  %88 = icmp slt i64 %84, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %83, %72
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %91 = load i64, i64* @CARD_ERROR_LIMIT, align 8
  %92 = call i32 @__card_putcntrlblock(%struct.TYPE_10__* %90, i64 %91)
  %93 = load i64, i64* @CARD_ERROR_LIMIT, align 8
  store i64 %93, i64* %5, align 8
  br label %208

94:                                               ; preds = %83
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  store %struct.TYPE_9__* %95, %struct.TYPE_9__** %97, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  store i64 %98, i64* %100, align 8
  %101 = load i64, i64* %8, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %101, %104
  br i1 %105, label %106, label %133

106:                                              ; preds = %94
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  store i64 0, i64* %108, align 8
  %109 = load %struct.card_direntry*, %struct.card_direntry** %14, align 8
  %110 = getelementptr inbounds %struct.card_direntry, %struct.card_direntry* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @CARD_SYSAREA, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %127, label %119

119:                                              ; preds = %106
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp sge i64 %122, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %119, %106
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %129 = load i64, i64* @CARD_ERROR_BROKEN, align 8
  %130 = call i32 @__card_putcntrlblock(%struct.TYPE_10__* %128, i64 %129)
  %131 = load i64, i64* @CARD_ERROR_BROKEN, align 8
  store i64 %131, i64* %5, align 8
  br label %208

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132, %94
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %135 = call %struct.card_bat* @__card_getbatblock(%struct.TYPE_10__* %134)
  store %struct.card_bat* %135, %struct.card_bat** %16, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  store i64 %138, i64* %11, align 8
  br label %139

139:                                              ; preds = %196, %133
  %140 = load i64, i64* %11, align 8
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp slt i64 %140, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %139
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %8, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = sub nsw i64 %152, 1
  %154 = xor i64 %153, -1
  %155 = and i64 %149, %154
  %156 = icmp slt i64 %148, %155
  br label %157

157:                                              ; preds = %145, %139
  %158 = phi i1 [ false, %139 ], [ %156, %145 ]
  br i1 %158, label %159, label %200

159:                                              ; preds = %157
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = add nsw i64 %165, %162
  store i64 %166, i64* %164, align 8
  %167 = load %struct.card_bat*, %struct.card_bat** %16, align 8
  %168 = getelementptr inbounds %struct.card_bat, %struct.card_bat* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = load i64, i64* %11, align 8
  %171 = load i64, i64* @CARD_SYSAREA, align 8
  %172 = sub nsw i64 %170, %171
  %173 = getelementptr inbounds i64, i64* %169, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  store i64 %174, i64* %176, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @CARD_SYSAREA, align 8
  %181 = icmp slt i64 %179, %180
  br i1 %181, label %190, label %182

182:                                              ; preds = %159
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp sge i64 %185, %188
  br i1 %189, label %190, label %195

190:                                              ; preds = %182, %159
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %192 = load i64, i64* @CARD_ERROR_BROKEN, align 8
  %193 = call i32 @__card_putcntrlblock(%struct.TYPE_10__* %191, i64 %192)
  %194 = load i64, i64* @CARD_ERROR_BROKEN, align 8
  store i64 %194, i64* %5, align 8
  br label %208

195:                                              ; preds = %182
  br label %196

196:                                              ; preds = %195
  %197 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %11, align 8
  br label %139

200:                                              ; preds = %157
  %201 = load i64, i64* %8, align 8
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 2
  store i64 %201, i64* %203, align 8
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %205 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %9, align 8
  store %struct.TYPE_10__* %204, %struct.TYPE_10__** %205, align 8
  br label %206

206:                                              ; preds = %200, %56
  %207 = load i64, i64* @CARD_ERROR_READY, align 8
  store i64 %207, i64* %5, align 8
  br label %208

208:                                              ; preds = %206, %190, %127, %89, %51, %35, %27
  %209 = load i64, i64* %5, align 8
  ret i64 %209
}

declare dso_local i64 @__card_getcntrlblock(i32, %struct.TYPE_10__**) #1

declare dso_local i32 @__card_putcntrlblock(%struct.TYPE_10__*, i64) #1

declare dso_local %struct.card_dat* @__card_getdirblock(%struct.TYPE_10__*) #1

declare dso_local %struct.card_bat* @__card_getbatblock(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
