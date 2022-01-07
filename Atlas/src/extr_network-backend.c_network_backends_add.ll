; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-backend.c_network_backends_add.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-backend.c_network_backends_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@BACKEND_TYPE_RO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"backend %s is already known!\00", align 1
@BACKEND_TYPE_RW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"added %s backend: %s\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"read/write\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_backends_add(%struct.TYPE_9__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.TYPE_10__* @network_backend_new(i32 %17)
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  store i8* null, i8** %10, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @BACKEND_TYPE_RO, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %3
  store i64 1, i64* %11, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = call i8* @strrchr(i8* %26, i8 signext 64)
  store i8* %27, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8*, i8** %10, align 8
  store i8 0, i8* %31, align 1
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = call i64 @atoi(i8* %33)
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %35, %3
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 @network_address_set_address(%struct.TYPE_11__* %42, i8* %43)
  %45 = icmp ne i64 0, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = call i32 @network_backend_free(%struct.TYPE_10__* %47)
  store i32 -1, i32* %4, align 4
  br label %189

49:                                               ; preds = %39
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @g_mutex_lock(i32 %52)
  store i32 -1, i32* %12, align 4
  store i64 0, i64* %9, align 8
  br label %54

54:                                               ; preds = %113, %49
  %55 = load i64, i64* %9, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %55, %60
  br i1 %61, label %62, label %116

62:                                               ; preds = %54
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %66, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %67, i64 %68
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  store %struct.TYPE_10__* %70, %struct.TYPE_10__** %13, align 8
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %82

73:                                               ; preds = %62
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @BACKEND_TYPE_RO, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i64, i64* %9, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %79, %73, %62
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %112

88:                                               ; preds = %82
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @S(i32 %93)
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @S(i32 %99)
  %101 = call i64 @strleq(i32 %94, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %88
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %105 = call i32 @network_backend_free(%struct.TYPE_10__* %104)
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @g_mutex_unlock(i32 %108)
  %110 = load i8*, i8** %6, align 8
  %111 = call i32 @g_critical(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %110)
  store i32 -1, i32* %4, align 4
  br label %189

112:                                              ; preds = %88, %82
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %9, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %9, align 8
  br label %54

116:                                              ; preds = %54
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %121 = call i32 @g_ptr_array_add(%struct.TYPE_12__* %119, %struct.TYPE_10__* %120)
  %122 = load i32, i32* %12, align 4
  %123 = icmp ne i32 %122, -1
  br i1 %123, label %124, label %172

124:                                              ; preds = %116
  %125 = load i64, i64* %7, align 8
  %126 = load i64, i64* @BACKEND_TYPE_RW, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %172

128:                                              ; preds = %124
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %133, i64 %135
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  store %struct.TYPE_10__* %137, %struct.TYPE_10__** %14, align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %141, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = sub i64 %147, 1
  %149 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %142, i64 %148
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %155, i64 %157
  store %struct.TYPE_10__* %150, %struct.TYPE_10__** %158, align 8
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %163, align 8
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = sub i64 %169, 1
  %171 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %164, i64 %170
  store %struct.TYPE_10__* %159, %struct.TYPE_10__** %171, align 8
  br label %172

172:                                              ; preds = %128, %124, %116
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @g_mutex_unlock(i32 %175)
  %177 = load i64, i64* %7, align 8
  %178 = load i64, i64* @BACKEND_TYPE_RW, align 8
  %179 = icmp eq i64 %177, %178
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %182 = load i8*, i8** %6, align 8
  %183 = call i32 @g_message(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %181, i8* %182)
  %184 = load i8*, i8** %10, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %188

186:                                              ; preds = %172
  %187 = load i8*, i8** %10, align 8
  store i8 64, i8* %187, align 1
  br label %188

188:                                              ; preds = %186, %172
  store i32 0, i32* %4, align 4
  br label %189

189:                                              ; preds = %188, %103, %46
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local %struct.TYPE_10__* @network_backend_new(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i64 @network_address_set_address(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @network_backend_free(%struct.TYPE_10__*) #1

declare dso_local i32 @g_mutex_lock(i32) #1

declare dso_local i64 @strleq(i32, i32) #1

declare dso_local i32 @S(i32) #1

declare dso_local i32 @g_mutex_unlock(i32) #1

declare dso_local i32 @g_critical(i8*, i8*) #1

declare dso_local i32 @g_ptr_array_add(%struct.TYPE_12__*, %struct.TYPE_10__*) #1

declare dso_local i32 @g_message(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
