; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-masterinfo.c_network_mysqld_masterinfo_append.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-masterinfo.c_network_mysqld_masterinfo_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_masterinfo_append(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %7 = call i32 @g_return_val_if_fail(%struct.TYPE_8__* %6, i32 -1)
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = call i32 @g_return_val_if_fail(%struct.TYPE_8__* %8, i32 -1)
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @network_mysqld_masterinfo_append_int32(%struct.TYPE_8__* %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %12, %2
  %20 = phi i1 [ true, %2 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 14
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @network_mysqld_masterinfo_append_string(%struct.TYPE_8__* %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %24, %19
  %32 = phi i1 [ true, %19 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @network_mysqld_masterinfo_append_int32(%struct.TYPE_8__* %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %36, %31
  %44 = phi i1 [ true, %31 ], [ %42, %36 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 13
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @network_mysqld_masterinfo_append_string(%struct.TYPE_8__* %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %48, %43
  %56 = phi i1 [ true, %43 ], [ %54, %48 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 12
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @network_mysqld_masterinfo_append_string(%struct.TYPE_8__* %61, i32 %64)
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %60, %55
  %68 = phi i1 [ true, %55 ], [ %66, %60 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @network_mysqld_masterinfo_append_string(%struct.TYPE_8__* %73, i32 %76)
  %78 = icmp ne i64 %77, 0
  br label %79

79:                                               ; preds = %72, %67
  %80 = phi i1 [ true, %67 ], [ %78, %72 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @network_mysqld_masterinfo_append_int32(%struct.TYPE_8__* %85, i32 %88)
  %90 = icmp ne i64 %89, 0
  br label %91

91:                                               ; preds = %84, %79
  %92 = phi i1 [ true, %79 ], [ %90, %84 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %103, label %96

96:                                               ; preds = %91
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @network_mysqld_masterinfo_append_int32(%struct.TYPE_8__* %97, i32 %100)
  %102 = icmp ne i64 %101, 0
  br label %103

103:                                              ; preds = %96, %91
  %104 = phi i1 [ true, %91 ], [ %102, %96 ]
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @network_mysqld_masterinfo_append_int32(%struct.TYPE_8__* %109, i32 %112)
  %114 = icmp ne i64 %113, 0
  br label %115

115:                                              ; preds = %108, %103
  %116 = phi i1 [ true, %103 ], [ %114, %108 ]
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %115
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @network_mysqld_masterinfo_append_string(%struct.TYPE_8__* %121, i32 %124)
  %126 = icmp ne i64 %125, 0
  br label %127

127:                                              ; preds = %120, %115
  %128 = phi i1 [ true, %115 ], [ %126, %120 ]
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %127
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 9
  %136 = load i32, i32* %135, align 4
  %137 = call i64 @network_mysqld_masterinfo_append_string(%struct.TYPE_8__* %133, i32 %136)
  %138 = icmp ne i64 %137, 0
  br label %139

139:                                              ; preds = %132, %127
  %140 = phi i1 [ true, %127 ], [ %138, %132 ]
  %141 = zext i1 %140 to i32
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %151, label %144

144:                                              ; preds = %139
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @network_mysqld_masterinfo_append_string(%struct.TYPE_8__* %145, i32 %148)
  %150 = icmp ne i64 %149, 0
  br label %151

151:                                              ; preds = %144, %139
  %152 = phi i1 [ true, %139 ], [ %150, %144 ]
  %153 = zext i1 %152 to i32
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %151
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @network_mysqld_masterinfo_append_string(%struct.TYPE_8__* %157, i32 %160)
  %162 = icmp ne i64 %161, 0
  br label %163

163:                                              ; preds = %156, %151
  %164 = phi i1 [ true, %151 ], [ %162, %156 ]
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %175, label %168

168:                                              ; preds = %163
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @network_mysqld_masterinfo_append_string(%struct.TYPE_8__* %169, i32 %172)
  %174 = icmp ne i64 %173, 0
  br label %175

175:                                              ; preds = %168, %163
  %176 = phi i1 [ true, %163 ], [ %174, %168 ]
  %177 = zext i1 %176 to i32
  store i32 %177, i32* %5, align 4
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp sge i32 %180, 15
  br i1 %181, label %182, label %195

182:                                              ; preds = %175
  %183 = load i32, i32* %5, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %192, label %185

185:                                              ; preds = %182
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @network_mysqld_masterinfo_append_int32(%struct.TYPE_8__* %186, i32 %189)
  %191 = icmp ne i64 %190, 0
  br label %192

192:                                              ; preds = %185, %182
  %193 = phi i1 [ true, %182 ], [ %191, %185 ]
  %194 = zext i1 %193 to i32
  store i32 %194, i32* %5, align 4
  br label %195

195:                                              ; preds = %192, %175
  %196 = load i32, i32* %5, align 4
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i32 -1, i32 0
  ret i32 %199
}

declare dso_local i32 @g_return_val_if_fail(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @network_mysqld_masterinfo_append_int32(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @network_mysqld_masterinfo_append_string(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
