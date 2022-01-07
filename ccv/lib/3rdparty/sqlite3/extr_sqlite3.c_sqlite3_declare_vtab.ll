; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_sqlite3_declare_vtab.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/sqlite3/extr_sqlite3.c_sqlite3_declare_vtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_27__*, %struct.TYPE_30__* }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_32__*, i64, i64, i32 }
%struct.TYPE_32__ = type { i64, %struct.TYPE_30__* }
%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_30__*, i64, %struct.TYPE_28__* }
%struct.TYPE_24__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_MISUSE = common dso_local global i32 0, align 4
@SQLITE_MISUSE_BKPT = common dso_local global i32 0, align 4
@TF_WithoutRowid = common dso_local global i32 0, align 4
@TF_NoVisibleRowid = common dso_local global i32 0, align 4
@SQLITE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3_declare_vtab(%struct.TYPE_28__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_31__, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @SQLITE_OK, align 4
  store i32 %13, i32* %7, align 4
  store i8* null, i8** %9, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @sqlite3_mutex_enter(i32 %16)
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %19, align 8
  store %struct.TYPE_29__* %20, %struct.TYPE_29__** %6, align 8
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %22 = icmp ne %struct.TYPE_29__* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23, %2
  %29 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %30 = load i32, i32* @SQLITE_MISUSE, align 4
  %31 = call i32 @sqlite3Error(%struct.TYPE_28__* %29, i32 %30)
  %32 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @sqlite3_mutex_leave(i32 %34)
  %36 = load i32, i32* @SQLITE_MISUSE_BKPT, align 4
  store i32 %36, i32* %3, align 4
  br label %212

37:                                               ; preds = %23
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_30__*, %struct.TYPE_30__** %39, align 8
  store %struct.TYPE_30__* %40, %struct.TYPE_30__** %8, align 8
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %42 = call i32 @IsVirtual(%struct.TYPE_30__* %41)
  %43 = call i32 @assert(i32 %42)
  %44 = call i32 @memset(%struct.TYPE_31__* %10, i32 0, i32 32)
  %45 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 4
  store %struct.TYPE_28__* %46, %struct.TYPE_28__** %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load i32, i32* @SQLITE_OK, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = call i32 @sqlite3RunParser(%struct.TYPE_31__* %10, i8* %50, i8** %9)
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %170

53:                                               ; preds = %37
  %54 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 2
  %55 = load %struct.TYPE_30__*, %struct.TYPE_30__** %54, align 8
  %56 = icmp ne %struct.TYPE_30__* %55, null
  br i1 %56, label %57, label %170

57:                                               ; preds = %53
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %170, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 2
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %170, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 2
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %69, align 8
  %71 = call i32 @IsVirtual(%struct.TYPE_30__* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %170, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %167, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 2
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %79, align 8
  store %struct.TYPE_30__* %80, %struct.TYPE_30__** %11, align 8
  %81 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %89, i32 0, i32 3
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @TF_WithoutRowid, align 4
  %95 = load i32, i32* @TF_NoVisibleRowid, align 4
  %96 = or i32 %94, %95
  %97 = and i32 %93, %96
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %107, align 8
  %109 = icmp eq %struct.TYPE_32__* %108, null
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %113 = call i64 @HasRowid(%struct.TYPE_30__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %78
  %116 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %117 = call %struct.TYPE_24__* @sqlite3PrimaryKeyIndex(%struct.TYPE_30__* %116)
  %118 = icmp ne %struct.TYPE_24__* %117, null
  br label %119

119:                                              ; preds = %115, %78
  %120 = phi i1 [ true, %78 ], [ %118, %115 ]
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %124 = call i64 @HasRowid(%struct.TYPE_30__* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %145, label %126

126:                                              ; preds = %119
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %126
  %138 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %139 = call %struct.TYPE_24__* @sqlite3PrimaryKeyIndex(%struct.TYPE_30__* %138)
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 1
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %143, %137, %126, %119
  %146 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %147, align 8
  store %struct.TYPE_32__* %148, %struct.TYPE_32__** %12, align 8
  %149 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %150 = icmp ne %struct.TYPE_32__* %149, null
  br i1 %150, label %151, label %166

151:                                              ; preds = %145
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %159 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %159, i32 0, i32 1
  store %struct.TYPE_32__* %158, %struct.TYPE_32__** %160, align 8
  %161 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %161, i32 0, i32 1
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %162, align 8
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %164, i32 0, i32 1
  store %struct.TYPE_30__* %163, %struct.TYPE_30__** %165, align 8
  br label %166

166:                                              ; preds = %151, %145
  br label %167

167:                                              ; preds = %166, %73
  %168 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %168, i32 0, i32 0
  store i32 1, i32* %169, align 8
  br label %183

170:                                              ; preds = %68, %62, %57, %53, %37
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %172 = load i32, i32* @SQLITE_ERROR, align 4
  %173 = load i8*, i8** %9, align 8
  %174 = icmp ne i8* %173, null
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* null
  %177 = load i8*, i8** %9, align 8
  %178 = call i32 @sqlite3ErrorWithMsg(%struct.TYPE_28__* %171, i32 %172, i8* %176, i8* %177)
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = call i32 @sqlite3DbFree(%struct.TYPE_28__* %179, i8* %180)
  %182 = load i32, i32* @SQLITE_ERROR, align 4
  store i32 %182, i32* %7, align 4
  br label %183

183:                                              ; preds = %170, %167
  %184 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  store i32 0, i32* %184, align 8
  %185 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @sqlite3VdbeFinalize(i64 %190)
  br label %192

192:                                              ; preds = %188, %183
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 2
  %195 = load %struct.TYPE_30__*, %struct.TYPE_30__** %194, align 8
  %196 = call i32 @sqlite3DeleteTable(%struct.TYPE_28__* %193, %struct.TYPE_30__* %195)
  %197 = call i32 @sqlite3ParserReset(%struct.TYPE_31__* %10)
  %198 = load i32, i32* %7, align 4
  %199 = and i32 %198, 255
  %200 = load i32, i32* %7, align 4
  %201 = icmp eq i32 %199, %200
  %202 = zext i1 %201 to i32
  %203 = call i32 @assert(i32 %202)
  %204 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @sqlite3ApiExit(%struct.TYPE_28__* %204, i32 %205)
  store i32 %206, i32* %7, align 4
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @sqlite3_mutex_leave(i32 %209)
  %211 = load i32, i32* %7, align 4
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %192, %28
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local i32 @sqlite3_mutex_enter(i32) #1

declare dso_local i32 @sqlite3Error(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @sqlite3_mutex_leave(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IsVirtual(%struct.TYPE_30__*) #1

declare dso_local i32 @memset(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @sqlite3RunParser(%struct.TYPE_31__*, i8*, i8**) #1

declare dso_local i64 @HasRowid(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_24__* @sqlite3PrimaryKeyIndex(%struct.TYPE_30__*) #1

declare dso_local i32 @sqlite3ErrorWithMsg(%struct.TYPE_28__*, i32, i8*, i8*) #1

declare dso_local i32 @sqlite3DbFree(%struct.TYPE_28__*, i8*) #1

declare dso_local i32 @sqlite3VdbeFinalize(i64) #1

declare dso_local i32 @sqlite3DeleteTable(%struct.TYPE_28__*, %struct.TYPE_30__*) #1

declare dso_local i32 @sqlite3ParserReset(%struct.TYPE_31__*) #1

declare dso_local i32 @sqlite3ApiExit(%struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
