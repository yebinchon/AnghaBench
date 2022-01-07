; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ClonePacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_ClonePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_16__*, %struct.TYPE_16__*, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_14__, %struct.TYPE_16__, %struct.TYPE_16__, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_16__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_11__, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_11__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_16__*, %struct.TYPE_16__*, %struct.TYPE_16__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_15__* @ClonePacket(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %8 = icmp eq %struct.TYPE_15__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %3, align 8
  br label %412

10:                                               ; preds = %2
  %11 = call %struct.TYPE_15__* @ZeroMallocFast(i32 384)
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %6, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = call i8* @MallocFast(i32 4)
  %18 = bitcast i8* %17 to %struct.TYPE_16__*
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 6
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %20, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 6
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 6
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = call i32 @Copy(%struct.TYPE_16__* %23, %struct.TYPE_16__* %26, i32 4)
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 16
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 16
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 15
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 15
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 13
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 13
  %42 = call i32 @Copy(%struct.TYPE_16__* %39, %struct.TYPE_16__* %41, i32 4)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 12
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 12
  %47 = call i32 @Copy(%struct.TYPE_16__* %44, %struct.TYPE_16__* %46, i32 4)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %159 [
    i32 137, label %56
    i32 136, label %71
    i32 135, label %86
  ]

56:                                               ; preds = %10
  %57 = call i8* @MallocFast(i32 4)
  %58 = bitcast i8* %57 to %struct.TYPE_16__*
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 14
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 2
  store %struct.TYPE_16__* %58, %struct.TYPE_16__** %61, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 14
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %64, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 14
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = call i32 @Copy(%struct.TYPE_16__* %65, %struct.TYPE_16__* %69, i32 4)
  br label %159

71:                                               ; preds = %10
  %72 = call i8* @MallocFast(i32 4)
  %73 = bitcast i8* %72 to %struct.TYPE_16__*
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 14
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  store %struct.TYPE_16__* %73, %struct.TYPE_16__** %76, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 14
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 14
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = call i32 @Copy(%struct.TYPE_16__* %80, %struct.TYPE_16__* %84, i32 4)
  br label %159

86:                                               ; preds = %10
  %87 = call i8* @MallocFast(i32 4)
  %88 = bitcast i8* %87 to %struct.TYPE_16__*
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 14
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  store %struct.TYPE_16__* %88, %struct.TYPE_16__** %91, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 14
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %94, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 14
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = call i32 @Copy(%struct.TYPE_16__* %95, %struct.TYPE_16__* %99, i32 4)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 13
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 15
  %104 = load i32*, i32** %103, align 8
  %105 = call i8* @Clone(i32* %104, i32 4)
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 13
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 15
  store i32* %106, i32** %109, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 13
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 14
  %113 = load i32*, i32** %112, align 8
  %114 = call i8* @Clone(i32* %113, i32 4)
  %115 = bitcast i8* %114 to i32*
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 13
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 14
  store i32* %115, i32** %118, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 13
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 13
  %122 = load i32*, i32** %121, align 8
  %123 = call i8* @Clone(i32* %122, i32 4)
  %124 = bitcast i8* %123 to i32*
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 13
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 13
  store i32* %124, i32** %127, align 8
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 13
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 12
  %131 = load i32*, i32** %130, align 8
  %132 = call i8* @Clone(i32* %131, i32 4)
  %133 = bitcast i8* %132 to i32*
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 13
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 12
  store i32* %133, i32** %136, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 13
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 11
  %140 = load i32*, i32** %139, align 8
  %141 = call i8* @Clone(i32* %140, i32 4)
  %142 = bitcast i8* %141 to i32*
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 13
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 11
  store i32* %142, i32** %145, align 8
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 13
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 10
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 13
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i8* @Clone(i32* %149, i32 %153)
  %155 = bitcast i8* %154 to i32*
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 13
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 10
  store i32* %155, i32** %158, align 8
  br label %159

159:                                              ; preds = %10, %86, %71, %56
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  switch i32 %167, label %315 [
    i32 134, label %168
    i32 133, label %183
    i32 132, label %285
    i32 131, label %300
  ]

168:                                              ; preds = %159
  %169 = call i8* @MallocFast(i32 4)
  %170 = bitcast i8* %169 to %struct.TYPE_16__*
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 11
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 2
  store %struct.TYPE_16__* %170, %struct.TYPE_16__** %173, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 11
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %176, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 11
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %180, align 8
  %182 = call i32 @Copy(%struct.TYPE_16__* %177, %struct.TYPE_16__* %181, i32 4)
  br label %315

183:                                              ; preds = %159
  %184 = call i8* @MallocFast(i32 4)
  %185 = bitcast i8* %184 to %struct.TYPE_16__*
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 11
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 2
  store %struct.TYPE_16__* %185, %struct.TYPE_16__** %188, align 8
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 11
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 2
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %191, align 8
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 11
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 2
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %195, align 8
  %197 = call i32 @Copy(%struct.TYPE_16__* %192, %struct.TYPE_16__* %196, i32 4)
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 12
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 9
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 12
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i8* @Clone(i32* %201, i32 %205)
  %207 = bitcast i8* %206 to i32*
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 12
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 9
  store i32* %207, i32** %210, align 8
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 12
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 8
  %214 = load i32*, i32** %213, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 12
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = call i8* @Clone(i32* %214, i32 %218)
  %220 = bitcast i8* %219 to i32*
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 12
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 8
  store i32* %220, i32** %223, align 8
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 12
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 7
  %227 = load i32, i32* %226, align 8
  switch i32 %227, label %277 [
    i32 143, label %228
    i32 142, label %228
    i32 138, label %229
    i32 139, label %241
    i32 140, label %253
    i32 141, label %265
  ]

228:                                              ; preds = %183, %183
  br label %277

229:                                              ; preds = %183
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 12
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 6
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 3
  %234 = load i32*, i32** %233, align 8
  %235 = call i8* @Clone(i32* %234, i32 4)
  %236 = bitcast i8* %235 to i32*
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 12
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 6
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 3
  store i32* %236, i32** %240, align 8
  br label %277

241:                                              ; preds = %183
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 12
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 6
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 2
  %246 = load i32*, i32** %245, align 8
  %247 = call i8* @Clone(i32* %246, i32 4)
  %248 = bitcast i8* %247 to i32*
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 12
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 6
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 2
  store i32* %248, i32** %252, align 8
  br label %277

253:                                              ; preds = %183
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 12
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 6
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = call i8* @Clone(i32* %258, i32 4)
  %260 = bitcast i8* %259 to i32*
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 12
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 6
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 1
  store i32* %260, i32** %264, align 8
  br label %277

265:                                              ; preds = %183
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 12
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 6
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = call i8* @Clone(i32* %270, i32 4)
  %272 = bitcast i8* %271 to i32*
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 12
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 6
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 0
  store i32* %272, i32** %276, align 8
  br label %277

277:                                              ; preds = %183, %265, %253, %241, %229, %228
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 12
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 5
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 12
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 5
  %284 = call i32 @CloneICMPv6Options(i32* %280, i32* %283)
  br label %315

285:                                              ; preds = %159
  %286 = call i8* @MallocFast(i32 4)
  %287 = bitcast i8* %286 to %struct.TYPE_16__*
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 11
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 1
  store %struct.TYPE_16__* %287, %struct.TYPE_16__** %290, align 8
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 11
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %293, align 8
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 11
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %296, i32 0, i32 1
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %297, align 8
  %299 = call i32 @Copy(%struct.TYPE_16__* %294, %struct.TYPE_16__* %298, i32 4)
  br label %315

300:                                              ; preds = %159
  %301 = call i8* @MallocFast(i32 4)
  %302 = bitcast i8* %301 to %struct.TYPE_16__*
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 11
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 0
  store %struct.TYPE_16__* %302, %struct.TYPE_16__** %305, align 8
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 11
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 0
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %308, align 8
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 11
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 0
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %312, align 8
  %314 = call i32 @Copy(%struct.TYPE_16__* %309, %struct.TYPE_16__* %313, i32 4)
  br label %315

315:                                              ; preds = %159, %300, %285, %277, %168
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %319, i32 0, i32 3
  store i32 %318, i32* %320, align 4
  %321 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 3
  %323 = load i32, i32* %322, align 4
  switch i32 %323, label %362 [
    i32 130, label %324
    i32 128, label %339
    i32 129, label %354
  ]

324:                                              ; preds = %315
  %325 = call i8* @MallocFast(i32 4)
  %326 = bitcast i8* %325 to %struct.TYPE_16__*
  %327 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 10
  %329 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %328, i32 0, i32 1
  store %struct.TYPE_16__* %326, %struct.TYPE_16__** %329, align 8
  %330 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %330, i32 0, i32 10
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 1
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** %332, align 8
  %334 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %334, i32 0, i32 10
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** %336, align 8
  %338 = call i32 @Copy(%struct.TYPE_16__* %333, %struct.TYPE_16__* %337, i32 4)
  br label %362

339:                                              ; preds = %315
  %340 = call i8* @MallocFast(i32 4)
  %341 = bitcast i8* %340 to %struct.TYPE_16__*
  %342 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i32 0, i32 10
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 0
  store %struct.TYPE_16__* %341, %struct.TYPE_16__** %344, align 8
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 10
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 0
  %348 = load %struct.TYPE_16__*, %struct.TYPE_16__** %347, align 8
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 10
  %351 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_16__*, %struct.TYPE_16__** %351, align 8
  %353 = call i32 @Copy(%struct.TYPE_16__* %348, %struct.TYPE_16__* %352, i32 4)
  br label %362

354:                                              ; preds = %315
  %355 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i32 0, i32 9
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %358, i32 0, i32 9
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @StrCpy(i32 %357, i32 4, i32 %360)
  br label %362

362:                                              ; preds = %315, %354, %339, %324
  %363 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %363, i32 0, i32 6
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %365, i32 0, i32 4
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 8
  store i32 %367, i32* %369, align 4
  %370 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 6
  %372 = load %struct.TYPE_16__*, %struct.TYPE_16__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %375, i32 0, i32 7
  store i32 %374, i32* %376, align 8
  %377 = load i32, i32* %5, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %397

379:                                              ; preds = %362
  %380 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %381 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = call i8* @MallocFast(i32 %382)
  %384 = bitcast i8* %383 to %struct.TYPE_16__*
  %385 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %386 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %385, i32 0, i32 5
  store %struct.TYPE_16__* %384, %struct.TYPE_16__** %386, align 8
  %387 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 5
  %389 = load %struct.TYPE_16__*, %struct.TYPE_16__** %388, align 8
  %390 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %391 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %390, i32 0, i32 5
  %392 = load %struct.TYPE_16__*, %struct.TYPE_16__** %391, align 8
  %393 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = call i32 @Copy(%struct.TYPE_16__* %389, %struct.TYPE_16__* %392, i32 %395)
  br label %397

397:                                              ; preds = %379, %362
  %398 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %398, i32 0, i32 4
  %400 = load i32*, i32** %399, align 8
  %401 = icmp ne i32* %400, null
  br i1 %401, label %402, label %410

402:                                              ; preds = %397
  %403 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %404 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %403, i32 0, i32 4
  %405 = load i32*, i32** %404, align 8
  %406 = call i8* @Clone(i32* %405, i32 4)
  %407 = bitcast i8* %406 to i32*
  %408 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %409 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %408, i32 0, i32 4
  store i32* %407, i32** %409, align 8
  br label %410

410:                                              ; preds = %402, %397
  %411 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %411, %struct.TYPE_15__** %3, align 8
  br label %412

412:                                              ; preds = %410, %9
  %413 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  ret %struct.TYPE_15__* %413
}

declare dso_local %struct.TYPE_15__* @ZeroMallocFast(i32) #1

declare dso_local i8* @MallocFast(i32) #1

declare dso_local i32 @Copy(%struct.TYPE_16__*, %struct.TYPE_16__*, i32) #1

declare dso_local i8* @Clone(i32*, i32) #1

declare dso_local i32 @CloneICMPv6Options(i32*, i32*) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
